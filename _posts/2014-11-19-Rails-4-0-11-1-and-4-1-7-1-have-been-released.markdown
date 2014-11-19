---
layout: post
title: Rails 4.0.11.1 and 4.1.7.1 have been released
categories: releases
author: rafaelfranca
published: true
date: 2014-11-19 16:16:18 -02:00
---
Hi everyone!

Rails 4.0.11.1 and 4.1.7.1 have been released!

These two releases contain only security fix that was already released at 4.0.12 ans 4.1.8.
You can read more about the issue [here (CVE-2014-7829)](https://groups.google.com/forum/#!topic/rubyonrails-security/rMTQy4oRCGk).

The difference about these releases and the previous releases that addressed the same issue is the
kind of changes included in the gems. 3.2.21, 4.0.12 and 4.1.8 were released from the stable branches
so they includes several changes not related with the security issue.

Our current security policy is to include only the security fixes in security releases to make easier
to people upgrade without having to deal with possible regressions caused by bug fixes. Since we
included bug fixes changes in 3.2.21, 4.0.12 and 4.1.8, we choose to release 4.0.11.1 and 4.1.7.1
following our current policy.

We are not releasing a new 3.2.x version because the only change included in 3.2.21 is a minor security
protection.

The commits for 4.0.11.1 can be found [here](https://github.com/rails/rails/compare/v4.0.11...v4.0.11.1),
and the commits for 4.1.7.1 can be found [here](https://github.com/rails/rails/compare/v4.1.7...v4.1.7.1).

Here are the checksums for 4.0.11.1:

```
$ shasum *4.0.11.1*
```

Here are the checksums for 4.1.7.1:

```
$ shasum *4.1.7.1*
```

<3<3<3<3
