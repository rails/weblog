---
layout: post
title: Google Summer of Code 2015 is now live
categories:
- activism
author: febuiles
published: true
date: 2015-04-30 15:00:00 +00:00
---
**TODO** Confirm Josh K. participation and remove **TODO** tags.

Google has announced the list of [accepted projects][melange] for this year's [Google Summer of
Code][gsoc] (GSoC). Rails has been granted 8 slots, here's a brief introduction to the projects and
the people behind them.

## Performance Enhancements for the Asset Pipeline

**Student:** [Martha de Luque]()    
**Mentors:** [Guillermo Iguaran](https://github.com/guilleiguaran) and [Joshua Peek](https://github.com/josh)

Martha will be profiling, benchmarking and updating parts of our asset compilation process to
improve our asset [re]generation speed. The initial scope of this project covers CoffeeScript, Sass and
our Uglifier, but benchmarks will be guiding this effort to work where we can get the biggest
benefits in these four months.

## Evented File System Monitoring

**Student:** [Puneet Agarwal](https://github.com/puneet24)    
**Mentors:** [Xavier Noria](https://github.com/puneet24) and [Matthew Draper](https://github.com/matthewd)

[FileUpdateChecker](http://api.rubyonrails.org/classes/ActiveSupport/FileUpdateChecker.html), the
system we use for detecting changes in files (mostly for reloading purposes) has served us well over the years, but we're done with
polling. Puneet will be replacing our current design with a event-based approach that relies
on existing third-party monitors (e.g. `inotify` or `FSEvent`).

## Asset Pipeline Support for Source Maps

**Student:** [Andrei Istratii](https://github.com/Andreis13)    
**Mentors:** [Arthur Nogueira Neves](https://github.com/arthurnn) and [Rafael Mendonça França](https://github.com/rafaelfranca)

The goal of Andrei's project is to give you good inspecting and debugging capabilities in environments
where your code goes through various transformations (e.g. your CoffeeScript file being compiled to
Javascript and then minified in your staging environment). With source maps you can use the existing
tools your browser provides to do things like reading the CoffeeScript source or setting breakpoints
on it.

## Refactoring ActiveSupport and ActionView

**Student:** [Islam Wazery](https://github.com/wazery)    
**Mentors:** [Kir Shatrov](https://github.com/kirs) and [Carlos Antonio da Silva](https://github.com/carlosantoniodasilva)

Islam is adding some of the things we should already have in Rails, liked named arguments
 for ActionView helpers (goodbye counting commas!), or removing the ActiveSupport dependency on
 ActionPack. He will also be investigating how to improve some of our core abstractions like
 [ActionController::Parameters](http://edgeapi.rubyonrails.org/classes/ActionController/Parameters.html)
 and
 [ActionView::OutputBuffer](http://tenderlovemaking.com/2014/06/04/yagni-methods-slow-us-down.html)
 to enable better security and performance.

## Web Console Browser Extensions

**Student:** [Hiroyuki Sano](https://github.com/sh19910711)    
**Mentor**: [Genadi Samokovarov](https://github.com/gsamokovarov)

Following up on the work of previous GSoC projects, Hiroyuki will be creating browser extensions for
the Rails web console. Like the the Source Maps project, this one will give you a better live
debugging experience using standard tools that everyone has available already.

## Test Failure Prediction

**Student:** [Genki Sugimoto](https://github.com/Genki-S)    
**Mentors:** [Robin Dupret](https://github.com/robin850), **TODO** Confirm: "and maybe Josh K from travis CI"

[Aaron Patterson](https://github.com/tenderlove) has touched upon some interesting ideas on
[predicting test
failures](http://tenderlovemaking.com/2015/02/13/predicting-test-failues.html) using the
experimental [Coverage](http://ruby-doc.org/stdlib-trunk/libdoc/coverage/rdoc/Coverage.html) feature
available in recent Ruby versions. Genki will be experimenting with this to see if we can make it a
part of the Rails testing ecosystem.

## Refactoring Cookies

**Student:** [Siddharth Bhatore](https://github.com/sbhatore)    
**Mentors:** [Kasper Timm Hansen](https://github.com/kaspth) and [Prem Sichanugrist](https://github.com/sikachu)

Rails cookie handling is pretty basic, and although it works in most use cases, we can improve
it. Siddarth will be adding server-side expiration mechanisms and purpose fields to our existing
cookie jar, allowing us to have better control and security over our systems.

## Improving RubyBench.org

**Student:** [Kasif Gilbert](https://github.com/klgilbert)    
**Mentors:** [Sam Saffron](https://github.com/SamSaffron)

In case you're not familiar with it, [RubyBench](http://rubybench.org/) is an amazing effort to keep
long running benchmarks for Ruby and related projects (like
[Rails](http://rubybench.org/rails/rails/releases)). As you can see, our own benchmarks could use
some love, so Kasif will be taking care of this. If everything goes well, JRuby support in
RubyBench would be the next step for this project.

* * *

**Fun Fact**: 5 of the 13 mentors we have this year participated as GSoC students in previous years. Today they're all
  core members or active contributors. **TODO** Confirm math, update if Josh K. is added.

We hope to keep you up on important updates during the summer, but if you're interested in staying
up to date (or maybe lending a hand?) please make sure to subscribe to our [mailing list](ml).

Finally, we want to thank José Valim/The Pragmatic Programmers, Pat Shaughnessy/No Starch Press and
O'Reilly for donating copies of [Crafting Rails
Applications](https://pragprog.com/book/jvrails/crafting-rails-applications), [Ruby Under the
Microscope](http://patshaughnessy.net/ruby-under-a-microscope) and discounts on
[O'Reilly products](http://www.oreilly.com/).

PS: In case you missed it, Ruby and SciRuby will also be part of this year's GSoC! You can learn
more in the [Ruby GSoC][rubygsoc-ml] and [SciRuby
Development][sciruby-ml] mailing list announcements.

[gsoc]: https://www.google-melange.com/gsoc/homepage/google/gsoc2015
[melange]: http://www.google-melange.com/gsoc/projects/list/google/gsoc2015
[rubygsoc-ml]: https://groups.google.com/forum/?hl=en#!topic/rubygsoc/u_BabU5Nmvo
[sciruby-ml]: https://groups.google.com/forum/?hl=en#!topic/sciruby-dev/ijd2KOh9WNc
[ml]: http://groups.google.com/forum/#!forum/rubyonrails-gsoc
