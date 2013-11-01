---
layout: post
title: '[ANN] Rails 4.0.1 has been released!'
category: releases
author: rafaelfranca
published: false
---

Hi everyone,

I am happy to announce that Rails 4.0.1 has been released. This is a bug fix release and
includes more than 460 commits.

This release comes up with an important change on how Active Record handles subsequent `order` calls.
In Rails 4.0.0 when you do something like this:

```ruby
User.order("name asc").order("created_at desc")
```

The later called `order` will be prepended in the ORDER BY clause resulting on this SQL:

```sql
SELECT * FROM users ORDER BY created_at desc, name asc
```

In Rails 4.0.1 the behavior of Rails 3 has been restored and the generated ORDER BY clause
looks like this:

```sql
SELECT * FROM users ORDER BY name asc, created_at desc
```

We chose to revert the behavior because it added a major backward incompatibility that made
harder to have an upgrade path without major changes in the application code. Also we consider
the older behavior a bug since it behaves differently from all the others scope methods when they
are chained. So we took the most conservative path of reverting it to be consistent with the idea
of having a smoother upgrade path to Rails 4.

For those who want the old behavior you can use [`.reorder`](http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html#method-i-reorder)
or [`.unscope`](http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html#method-i-unscope)
to remove the ORDER BY clause and generate another one.

Also, this release adds some performance improvements to make Rails 4 even faster.

## CHANGES since 4.0.0

To view the changes for each gem, please read the changelogs on GitHub:

* [Action Mailer CHANGELOG](https://github.com/rails/rails/blob/v4.0.1/actionmailer/CHANGELOG.md)
* [Action Pack CHANGELOG](https://github.com/rails/rails/blob/v4.0.1/actionpack/CHANGELOG.md)
* [Active Model CHANGELOG](https://github.com/rails/rails/blob/v4.0.1/activemodel/CHANGELOG.md)
* [Active Record CHANGELOG](https://github.com/rails/rails/blob/v4.0.1/activerecord/CHANGELOG.md)
* [Active Support CHANGELOG](https://github.com/rails/rails/blob/v4.0.1/activesupport/CHANGELOG.md)
* [Railties CHANGELOG](https://github.com/rails/rails/blob/v4.0.1/railties/CHANGELOG.md)

*Full listing*

To see the full list of changes, [check out all the commits on
GitHub](https://github.com/rails/rails/compare/v4.0.0...v4.0.1).

## SHA-1

If you'd like to verify that your gem is the same as the one I've uploaded,
please use these SHA-1 hashes:

* 482e0c05fb25ae9a8d261f301054fc182e7b4447  actionmailer-4.0.1.rc1.gem
* 4da9135cfc94be9fa2f25697247bacc5dad5a7ae  actionpack-4.0.1.rc1.gem
* 205ac4e9fa0be619f636d2947005796be6b8ad9a  activemodel-4.0.1.rc1.gem
* e2f1268614c91b9d9d4ca3dfecf2db5c59c10141  activerecord-4.0.1.rc1.gem
* 349fc20340fde7d36a755a2e739187659b082648  activesupport-4.0.1.rc1.gem
* 43b6b57d3c5eaeb2ac0bdea17e9c68a301293930  rails-4.0.1.rc1.gem
* f17137d25df9f10d6c1a3d31563c70cc82ad1525  railties-4.0.1.rc1.gem

I'd like to thank you all, every contributor who helped with this release.
