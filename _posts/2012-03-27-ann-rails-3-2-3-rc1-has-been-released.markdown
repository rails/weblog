---
layout: post
title: "[ANN] Rails 3.2.3.rc1 has been released!"
categories: []
author: spastorino
published: true
date: 2012-03-27 22:00:00.000000000 +00:00
---
Rails 3.2.3.rc1 has been released.

### IMPORTANT

This release changes the default value of *config.active_record.whitelist_attributes* to true.  This change only affects newly generated applications so it should not cause any backwards compatibility issues for users who are upgrading but it may affect some tutorials and introductory material.  For more information see  the mass assignment section of the [ruby on rails security guide][1]

We've also adjusted the dependencies on rack-cache and mail to address the recent security vulnerabilities with those libraries. If you are running a vulnerable version of mail or rack-cache you should update both gems to a safe version. We also fixed a couple of regressions in the render method.

If there are no release blockers, then I will be releasing the final version on March 29th.
If you find something please open an issue on github and let me know through email (santiago _at_ wyeworks.com), tweet ([spastorino](http://twitter.com/spastorino)) or cc me on the github issue.

[1]: http://guides.rubyonrails.org/security.html#mass-assignment

### CHANGES since 3.2.2

*ActionMailer*

*   Upgrade mail version to 2.4.3 *ML*


*ActionPack*

*   Do not include the authenticity token in forms where remote: true as ajax forms use the meta-tag value *DHH*

*   Turn off verbose mode of rack-cache, we still have X-Rack-Cache to
    check that info. Closes #5245. *Santiago Pastorino*

*   Fix #5238, rendered_format is not set when template is not rendered. *Piotr Sarnacki*

*   Upgrade rack-cache to 1.2. *José Valim*

*   ActionController::SessionManagement is deprecated. *Santiago Pastorino*

*   Since the router holds references to many parts of the system like engines, controllers and the application itself, inspecting the route set can actually be really slow, therefore we default alias inspect to to_s. *José Valim* 

*   Add a new line after the textarea opening tag. Closes #393 *rafaelfranca*

*   Always pass a respond block from to responder. We should let the responder to decide what to do with the given overridden response block, and not short circuit it. *sikachu*

*   Fixes layout rendering regression from 3.2.2. *José Valim*


*ActiveModel*

* No changes


*ActiveRecord*

*   Added find_or_create_by_{attribute}! dynamic method. *Andrew White*

*   Whitelist all attribute assignment by default. Change the default for newly generated applications to whitelist all attribute assignment.  Also update the generated model classes so users are reminded of the importance of attr_accessible. *NZKoz*

*   Update ActiveRecord::AttributeMethods#attribute_present? to return false for empty strings. *Jacobkg*

*   Fix associations when using per class databases. *larskanis*

*   Revert setting NOT NULL constraints in add_timestamps *fxn*

*   Fix mysql to use proper text types. Fixes #3931. *kennyj*

*   Fix #5069 - Protect foreign key from mass assignment through association builder. *byroot*


*ActiveResource*

* No changes


*ActiveSupport*

* No changes


*Railties*

* No changes


### SHA-1

* SHA-1 (actionmailer-3.2.3.rc1.gem) = 
* SHA-1 (actionpack-3.2.3.rc1.gem) = 
* SHA-1 (activemodel-3.2.3.rc1.gem) = 
* SHA-1 (activerecord-3.2.3.rc1.gem) = 
* SHA-1 (activeresource-3.2.3.rc1.gem) = 
* SHA-1 (activesupport-3.2.3.rc1.gem) = 
* SHA-1 (rails-3.2.3.rc1.gem) = 
* SHA-1 (railties-3.2.3.rc1.gem) = 

You can find an exhaustive list of changes on
[github](https://github.com/rails/rails/compare/v3.2.2...v3.2.3.rc1).

Thanks to everyone, this is your last chance to hold the release if something goes wrong. So please, give this release a try :).
