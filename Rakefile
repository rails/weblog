task :new_page do
  name = ENV['POSTNAME']

  abort "rake new_page POSTNAME=\"whatever\"" unless name

  slug = name.gsub(/[^\w\d]/, '-').gsub(/--/, '-')
  now = Time.now
  date = now.strftime("%Y-%m-%d")
  File.open("_posts/#{date}-#{slug}.markdown", 'w') do |f|
    f.write <<-eoblog
---
layout: post
title: '#{name}'
categories:
author: Your Name
published: true
date: #{now.strftime("%Y-%m-%d %H:%M:%S %:z")}
---
Your post content in HTML, Textile or Markdown format
    eoblog
  end
end
