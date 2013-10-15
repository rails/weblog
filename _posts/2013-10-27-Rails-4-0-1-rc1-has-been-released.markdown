---
layout: post
title: '[ANN] Rails 4.0.1.rc1 has been released!'
category: releases
author: rafaelfranca
published: true
---

Hi everyone,

I am happy to announce that Rails 4.0.1.rcq has been released. This is a bug fix release and
includes more than 450 commits.

This release includes an important change on how Active Record handles subsequents `order` calls.
In Rails 4.0.0 when you do something like this:

```ruby
User.order("name asc").order("created_at desc")
```

The later called `order` is prepended in the old clause resulting on this SQL:

```sql
SELECT * FROM users ORDER BY created_at desc, name asc
```

In Rails 4.0.1 the old behavior of Rails 3 was restored and the orders clauses are appended like
this:

```sql
SELECT * FROM users ORDER BY name asc, created_at desc
```

We choose to revert the behavior because it added a major backward incompatibility because it make
harder to have a upgrade path without major changes in the application code. So we took the most
conservative path of reverting it to be consistent with the idea of having a smoother upgrade path
to Rails 4.

Also, this release also add some performance improvements to make Rails 4 even faster.

## CHANGES since 4.0.0

*Action Mailer*

*Action Pack*

*Active Model*

*Active Record*

*Active Support*

*Railties*

*Full listing*

To see the full list of changes, [check out all the commits on
GitHub](https://github.com/rails/rails/compare/v4.0.0...v4.0.0.rc1).

## SHA-1

If you'd like to verify that your gem is the same as the one I've uploaded,
please use these SHA-1 hashes:

* dd2333744644870efcd149e3adf3c3b6934ec6ed  actionmailer-3.2.14.gem
* efcfc238115f7db57650dbab348d0b5192f98770  actionpack-3.2.14.gem
* d72fadd29e10e2ead9fb0d7371bed5a7fb32c044  activemodel-3.2.14.gem
* af7585f9a58d5e643d6e332daede4a0b8ee1de7a  activerecord-3.2.14.gem
* 188924273139cea07032254987d748aee45f5800  activeresource-3.2.14.gem
* e221938399c9cb040ef9285f52b18bfa3e59b10a  activesupport-3.2.14.gem
* a5d44cf4c65798e925d998f416804cd23c914001  rails-3.2.14.gem
* 4e99050427fb47ff515051e78eedf328c9ec5676  railties-3.2.14.gem

I'd like to thank you all, every contributor who helped with this release,
especially everyone who tried the release candidates.
