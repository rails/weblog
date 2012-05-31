---
layout: post
title: Rails version 3.0.13 has been released!
categories: []
author: tenderlove
published: true
---

Good news everyone!  Rails version 3.0.13 has been released.

This release of Rails contains two important security fixes:

  * CVE-2012-2660 Ruby on Rails Active Record Unsafe Query Generation Risk
  * CVE-2012-2661 Ruby on Rails Active Record SQL Injection Vulnerability

It is suggested that all users upgrade immediately.  For more information about
these issues, please see the annoumcenents on the rubyonrails-security
mailing list:

  https://groups.google.com/group/rubyonrails-security

Specifically these announcements:

  https://groups.google.com/group/rubyonrails-security/browse_thread/thread/f1203e3376acec0f
  https://groups.google.com/group/rubyonrails-security/browse_thread/thread/7546a238e1962f59

Other changes for this release can be found in each component's CHANGELOG:

  https://github.com/rails/rails/blob/3-0-stable/actionmailer/CHANGELOG
  https://github.com/rails/rails/blob/3-0-stable/actionpack/CHANGELOG
  https://github.com/rails/rails/blob/3-0-stable/activemodel/CHANGELOG
  https://github.com/rails/rails/blob/3-0-stable/activerecord/CHANGELOG
  https://github.com/rails/rails/blob/3-0-stable/activesupport/CHANGELOG
  https://github.com/rails/rails/blob/3-0-stable/railties/CHANGELOG

All changes can be found here:

  https://github.com/rails/rails/compare/v3.0.4...v3.1.13

I want to give a special thanks to Ben Murphy for responsibly reporting the two
security issues that are fixed in this release.  Thank you very much!

:heart::heart::heart:

