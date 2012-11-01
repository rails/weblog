---
layout: post
title: Rails 3.2.9.rc2 has been released!
categories: []
author: spastorino
published: true
---

Hi everyone,

Rails 3.2.9.rc2 has been released. If no regressions are found I will
release 3.2.9 final this Monday 5th. If you find a regression open an
issue on github and mention me on it, mail me or tweet me, whatever but
let me know :).

## CHANGES since 3.2.9.rc1

*Action Mailer*

*   No changes


*Action Pack*

*   Revert the `assert_template` fix to not pass with ever string that matches the template name.
    This added a regression since people were relying on this buggy behavior.
    This will introduce back #3849 but this stable release will be backward compatible.
    Fixes #8068.

    *Rafael Mendonça França*

*   Revert the rename of internal variable on ActionController::TemplateAssertions to prevent
    naming collisions. This added a regression related with shoulda-matchers, since it is
    expecting the [instance variable @layouts](https://github.com/thoughtbot/shoulda-matchers/blob/9e1188eea68c47d9a56ce6280e45027da6187ab1/lib/shoulda/matchers/action_controller/render_with_layout_matcher.rb#L74).
    This will introduce back #7459 but this stable release will be backward compatible.
    Fixes #8068.

    *Rafael Mendonça França*


*Active Model*

*   No changes


*Active Record*

*   Fix issue with collection associations calling first(n)/last(n) and attempting
    to set the inverse association when `:inverse_of` was used. Fixes #8087.

    *Carlos Antonio da Silva*

*   Fix ActiveRecord#update_column return value.

    *Aliaxandr*

*   Fix bug when Column is trying to type cast boolean values to integer.
    Fixes #8067.

    *Rafael Mendonça França*

*   Fix bug where `rake db:test:prepare` tries to load the structure.sql into development database.
    Fixes #8032.

    *Grace Liu + Rafael Mendonça França*

*   Fixed support for `DATABASE_URL` environment variable for rake db tasks. *Grace Liu*


*Active Resource*

*   No changes


*Active Support*

*   No changes


*Railties*

*   No changes

## SHA-1

* 24af6eff6b7c647d04eee9585184ba89f0746d40  actionmailer-3.2.9.rc1.gem
* c34ea8f12308c9f6fc4d6b31ce8caa2a562b210a  actionpack-3.2.9.rc1.gem
* 8b3171fdde905c76a541286192e6cef211d83a70  activemodel-3.2.9.rc1.gem
* 0752e47880da4bb9be2b0309bce5a444a9271420  activerecord-3.2.9.rc1.gem
* d8c1eeedbf3bc33d1560700cc70cb1752cdc811a  activeresource-3.2.9.rc1.gem
* 8ad917f70cc3b0a04864c8aa705a0e4997736872  activesupport-3.2.9.rc1.gem
* 6fdc627a032f1f3ded7830e044298e20fd3fc6ce  rails-3.2.9.rc1.gem
* 444da0c3f2a1e3200d2a613973062c2d3e4ad7d0  railties-3.2.9.rc1.gem

You can find a list of changes between v3.2.9.rc1 and v3.2.9.rc2 [here](https://github.com/rails/rails/compare/v3.2.9.rc1...v3.2.9.rc2)
and an exhaustive list of changes since v3.2.8 [here](https://github.com/rails/rails/compare/v3.2.8...v3.2.9.rc2).

Thanks to everyone!
