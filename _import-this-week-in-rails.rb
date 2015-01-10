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
  _import-this-week-in-rails.rb http://us3.campaign-archive2.com/?u=2721e27ce456363785acc5405&id=5aed0d5741
"
  exit -1
end

require 'open-uri'
require 'reverse_markdown'

mailchimp_html = open(url).read

title = Nokogiri.parse(mailchimp_html).xpath("//meta[@property='og:title']/@content").map(&:value).join
raise "Failed to extract title" if title.empty?

newsletter_html = Nokogiri.parse(mailchimp_html).at_css("table.body")
raise "Failed to extract newsletter content" if newsletter_html.nil?

tags = %w(h1 h2 h3 h4 p)
xpath_query = tags.map { |tag| "//#{tag}" }.join ' | '
simple_newsletter_html = newsletter_html.xpath(xpath_query).to_html
md = ReverseMarkdown.convert(simple_newsletter_html, unknown_tags: :bypass)
raise "Failed to convert newsletter content to markdown" if md.empty?

# remove goodbits ad ("Try Goodbits for free!")
md.gsub!(/^.*Goodbits.*$/, '')

date = Time.now

meta = %|---
layout: post
title: "#{title}"
categories: news
author: chancancode
published: true
date: #{date.to_s}
---

|

post_content = meta + md
post_path = "_posts/#{date.strftime('%Y-%m-%d')}-#{title.gsub(/[^A-Za-z0-9 ]/, '').gsub(/\s+/, '-')}.markdown"

File.open(post_path, 'w') do |f|
  f.write post_content
end

system "#{ENV['EDITOR'] || 'open'} #{post_path}"
