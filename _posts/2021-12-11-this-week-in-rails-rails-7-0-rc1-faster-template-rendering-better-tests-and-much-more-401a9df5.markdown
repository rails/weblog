---
layout: post
title: "Rails 7.0 RC1, faster template rendering, better tests and much more!"
categories: news
author: robin850
published: true
date: 2021-12-11
---

Hi! [Robin](https://github.com/robin850) here, with the latest news from the Ruby on Rails world!  
  
 [**Rails 7.0 RC1: New JavaScript Answers, At-Work Encryption, Query Origin Logging, Zeitwerk Exclusively**](https://weblog.rubyonrails.org/2021/12/6/Rails-7-0-rc-1-released/)  
With tons of new features and improvements like new ways to deal with JavaScript or at-work encryption, this new version of Rails should be released before Christmas! 🎉🎄  
  
It would be great if you could try to install it and report any bug or regression you may find. You can follow [these steps](https://edgeguides.rubyonrails.org/upgrading_ruby_on_rails.html#upgrading-from-rails-6-1-to-rails-7-0) to upgrade your applications.  
  
[**Compile ERB templates with frozen string literal enabled**](https://github.com/rails/rails/pull/43725)  
If your application renders heavy templates, a brand new configuration option is available to enable _frozen\_string\_literal_ in your views that might give you a performance boost.  
  
[**Reset instance variables between tests in ActionController::TestCase**](https://github.com/rails/rails/pull/43735)  
To avoid any surprising outcomes that may happen when instance variables' values persist, this patch properly resets variables defined during each test.  
  
[**Wrap request calls with the Rails executor in ActionController::TestCase**](https://github.com/rails/rails/pull/43734)  
Similarly to the previous patch, this one lessens pitfalls executing controller tests by properly resetting global states at the end of each request. This also improves parity with _ActionDispatch::IntegrationTest_.  
  
[**Add authenticate\_by method for models with has\_secure\_password**](https://github.com/rails/rails/pull/43765)  
Active Record models that rely on _has\_secure\_password_ now have a brand new method which provides a handy shortcut to find and authenticate a record. Moreover, it addresses a potential timing-based security vulnerability using a finder method before authentication. Less code, more security!  
  
 [**Move multi-database configuration to an initializer**](https://github.com/rails/rails/pull/43796)  
Rather than generating settings in the production environment file, a new generator is now available to create an initializer to configure multi-database settings. This eases parity between your different environments.  
  
[**Use built-in Ruby regex for e-mail validation**](https://github.com/rails/rails/pull/43832)  
 Just as a Pro Tip™, the Ruby standard library has a built-in regex to check if an e-mail address is valid or not. Much easier than mentally compiling any home-made regular expression and less error-prone.  
  
[**Avoid double string split in ActiveSupport::MessageVerifier**](https://github.com/rails/rails/pull/42919)  
It's always nice to see how people can improve performances. This patch brings a tiny boost to the _#verified_ method of the _MessageVerifier_ class by avoiding an extra split on the provided string.  
  
Since last time, [41 people](https://contributors.rubyonrails.org/contributors/in-time-window/20211126-20211211) contributed to Rails. There's too much changes to cover them but you can check out all of these [here](https://github.com/rails/rails/compare/main@%7B2021-11-26%7D...main@%7B2021-12-11%7D). Until next time!

