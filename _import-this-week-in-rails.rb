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
require 'json'
require 'nokogiri'
require 'reverse_markdown'

class GoodbitsEmail
  attr_accessor :email

  def initialize(raw_email)
    @email = JSON.parse(raw_email, symbolize_names: true)[:newsletter_email]
  end

  def title
    email[:subject].strip
  end

  # Author is mentioned in the first text block of the email
  def author
    intro_html = Nokogiri::HTML(content_blocks_for("Text")[0][:variables][:html_text])
    begin
      intro_html
        .xpath("//a[contains(@href, 'twitter.com/') or contains(@href, 'github.com/') and not(contains(@href, 'rails'))]")
        .first['href']
        .split('/')
        .last
    rescue
      'chancancode'
    end
  end

  def markdown_render
    md =[]
    email[:content_blocks].each do |cb|
      next if ["Header", "Footer"].include?(cb[:component_name])

      case cb[:component_name]
      when "Text"
        md << html_to_md(cb[:variables][:html_text])
      when "Subheading"
        md << "## #{cb[:variables][:subheading]}\n"
      when "Image"
        md << "![](#{cb[:image_url]})\n" if cb[:image_url] != nil
      when "Article"
        md << "### [#{cb[:variables][:title]}](#{cb[:variables][:link_to]})\n"
        md << html_to_md(cb[:variables][:html_description])
      end

    end
    md.join("\n")
  end

  private
  def html_to_md(html)
    ReverseMarkdown.convert(html, unknown_tags: :bypass)
  end

  def content_blocks_for(component_name)
    email[:content_blocks].select {|cb|
      cb[:component_name] == component_name
    }
  end
end

uri = URI.parse(url + ".json")
path_parts = uri.path.split("/")
slug = path_parts.last.gsub(".json", "")
date = Date.new(*path_parts[1..3].map(&:to_i))

goodbits_email = GoodbitsEmail.new(uri.open.read)

meta = %|---
layout: post
title: "#{goodbits_email.title}"
categories: news
author: #{goodbits_email.author}
published: true
date: #{date.to_s}
---

|

md = goodbits_email.markdown_render

post_content = meta + md
post_path = "_posts/#{date.strftime('%Y-%m-%d')}-this-week-in-rails-#{slug}.markdown"

File.open(post_path, 'w') do |f|
  f.write post_content
end

system "#{ENV['EDITOR'] || 'open'} #{post_path}"
