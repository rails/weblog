#!/usr/bin/env ruby
#
# Create a release post for ruby on rails
#
# Usage:
#
# _create-release-post.rb versions
#
# Example:
#
# _create-release-post.rb "5.1.6,5.1.5"
#
# With a custom rails path:
#
# RAILS_PATH=../rails-checkout _create-release-post.rb "5.1.6,5.1.5"
#
require 'date'
DEFAULT_RAILS_PATH="../rails"

versions = ARGV[0]&.split(',')
rails_path = ENV['RAILS_PATH'] || DEFAULT_RAILS_PATH

def exit_with_usage(message)
  puts <<-EOF
#{message}

Usage:
  _create-release-post.rb versions

Example:
  _create-release-post.rb "5.1.6,5.1.5"
  RAILS_PATH=../rails-checkout _create-release-post.rb "5.1.6,5.1.5"
EOF
  exit -1
end

if !File.exists?(File.join(rails_path, 'RAILS_VERSION'))
  exit_with_usage("Could not find the rails checkout. Configure it with the environment variable RAILS_PATH.")
elsif (versions&.size || 0) == 0
  exit_with_usage("Please specify the versions argument.")
end

release_draft = Dir.chdir(rails_path) do
  `VERSIONS="#{ARGV[0]}" rake announce`
end

exit 0 if release_draft.empty?

date = DateTime.now
meta = %|---
layout: post
title: "Rails #{versions.join(' and ')} #{versions.size > 1 ? "have" : "has"} been released"
categories: releases
author:
published: true
date: #{date.to_s}
---
|

post_path = "_posts/#{date.strftime('%Y-%m-%d')}-Rails-#{versions.join("-and-").gsub('.', '-')}.markdown"
File.write(post_path, meta + release_draft)

system "#{ENV['EDITOR'] || 'open'} #{post_path}"
