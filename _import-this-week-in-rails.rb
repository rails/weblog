#!/usr/bin/env ruby
#
# Import "This Week in Rails" issue to a blog post
#
# Usage:
#
# _import-this-week-in-rails.rb PUBLIC_PAGE_URL
#
# Example:
#
# _import-this-week-in-rails.rb http://us3.campaign-archive2.com/?u=2721e27ce456363785acc5405&id=5aed0d5741
#

url = ARGV[0]

if url.nil?
  puts "Usage:
  _import-this-week-in-rails.rb PUBLIC_PAGE_URL

Example:
  _import-this-week-in-rails.rb https://rails-weekly.ongoodbits.com/2015/01/30/relation-or-file-fixtures-kwargs-and-more
"
  exit -1
end

require 'uri'
require 'open-uri'
require 'reverse_markdown'

uri = URI.parse(url)
path_parts = uri.path.split("/")
slug = path_parts.last
date = Date.new(*path_parts[1..3].map(&:to_i))

uri.query = 'body=1'
parsed = Nokogiri.parse(uri.open.read)

title = parsed.css("title").text
raise "Failed to extract title" if title.empty?

newsletter_html = parsed.at_css("table.body")
raise "Failed to extract newsletter content" if newsletter_html.nil?

tags = %w(h1 h2 h3 h4 p pre)
xpath_query = tags.map { |tag| "//#{tag}" }.join ' | '
simple_newsletter_html = newsletter_html.xpath(xpath_query).to_html
md = ReverseMarkdown.convert(simple_newsletter_html, unknown_tags: :bypass)
raise "Failed to convert newsletter content to markdown" if md.empty?

# remove goodbits ad ("Try Goodbits for free!")
md.gsub!(/^.*Goodbits.*$/, '')

begin
  author = newsletter_html
    .xpath("//table[@class='row'][2] //a[contains(@href, 'twitter.com/') or contains(@href, 'github.com/') and not(contains(@href, 'rails'))]")
    .first['href']
    .split('/')
    .last
rescue
  author = 'chancancode'
end

meta = %|---
layout: post
title: "#{title}"
categories: news
author: #{author}
published: true
date: #{date.to_s}
---

|

post_content = meta + md
post_path = "_posts/#{date.strftime('%Y-%m-%d')}-this-week-in-rails-#{slug}.markdown"

File.open(post_path, 'w') do |f|
  f.write post_content
end

system "#{ENV['EDITOR'] || 'open'} #{post_path}"
