#!/usr/bin/env ruby
#
# Create a release post for ruby on rails
#
# Usage:
#
# _create-release-post.rb tag
#
# Example:
#
# _create-release-post.rb v5.1.5.rc1
#

tag = ARGV[0]

if tag.nil?
  puts "Usage:
  _create-release-post.rb tag

Example:
  _create-release-post.rb v5.1.5.rc1
"
  exit -1
end

require 'uri'
require 'open-uri'

gems = %w{actioncable actionmailer actionpack actionview activejob activemodel activerecord activesupport railties}

changes = gems.map do |gem|
  uri = URI.parse("https://raw.githubusercontent.com/rails/rails/#{tag}/#{gem}/CHANGELOG.md")
  file = uri.open.read
  changes = file.lines[1..-1].inject("") do |changes, line|
    break changes if line =~ /^##/
    changes + line
  end.chomp('')
  %|### Changes in #{gem}
  #{changes}
|
end

date = DateTime.now
version = tag[1..-1]

meta = %|---
layout: post
title: "Rails #{version}: "
categories: releases
author:
published: true
date: #{date.to_s}
---

|

content = %|
Hi everyone,

I am happy to announce that Rails #{version} has been released.

## CHANGES since last release

#{changes.join("\n")}

## SHA-256

If you’d like to verify that your gem is the same as the one I’ve uploaded, please use these SHA-256 hashes.

Here are the checksums for #{version}:

```

```

As always, huge thanks to the many contributors who helped with this release.
|

post_content = meta + content

post_path = "_posts/#{date.strftime('%Y-%m-%d')}-Rails-#{tag.gsub('.', '-')}.markdown"

File.open(post_path, 'w') do |f|
  f.write post_content
end

system "#{ENV['EDITOR'] || 'open'} #{post_path}"
