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

These two releases contain only security fix that was already released as 4.0.12 and 4.1.8.
You can read more about the issue [here (CVE-2014-7829)](https://groups.google.com/forum/#!topic/rubyonrails-security/rMTQy4oRCGk).

4.0.12 and 4.1.8 were inadvertently based on their respective stable branches, and so incorporated
additional changes beyond those necessary to resolve the security issue. In keeping with our security
policy, it is our intention to include only the minimum necessary changes in security releases, to
ensure everyone can upgrade without fear of regressions. As those releases included unrelated changes,
we are providing new releases, based on the previous release, which contain only the security fix
itself.

If you have already successfully upgraded to 4.0.12 or 4.1.8, no further action is required.
Otherwise, if you are still on 4.0.11 or 4.1.7, please do upgrade to 4.0.11.1 or 4.1.7.1 at your
earliest convenience.

The 3.2.21 release did incorporate a second change, but that change was intended: by policy, minor
security-relevant bugs (which do not independently warrant a security release) are occasionally
backported to 3-2-stable, and rolled into a subsequent security release.

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
