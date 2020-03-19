---
layout: post
title: 'Rails 6.0.2.2 and 5.2.4.2 have been released!'
categories: releases
author: tenderlove
published: true
date: 2020-03-19 10:03:21 -0700
---
Hi everyone,

HAPPY THURSDAY EVERYONE!!!!

I am pleased to announce that Rails 6.0.2.2 and 5.2.4.2 have been released.
This release contains a security fix for CVE-2020-5267.  You can find out more about the 
issue [here](https://groups.google.com/forum/#!topic/rubyonrails-security/55reWMM_Pg8).

For ease of upgrade, these releases only contain one patch which addresses the
security issue.

If you would like to see the full list of changes, you can check out all of the
commits on GitHub.

* [Here are all the changes for 6.0.2.2.](https://github.com/rails/rails/compare/v6.0.2.1...v6.0.2.2)
* [Here are all the changes for 5.2.4.2.](https://github.com/rails/rails/compare/v5.2.4.1...v5.2.4.2)

## SHA-256

If you'd like to verify that your gem is the same as the one I've uploaded,
please use these SHA-256 hashes.

Here are the checksums for 6.0.2.2:

```
b2170b2b670e9f3d8a355a7ad78dabe996b7290c3e1a0390cc8782fabd1a93cd  actioncable-6.0.2.2.gem
c5f6d4bb2b083de45c547089addb351c01bb6c29c8789f447bca19f34f05223e  actionmailbox-6.0.2.2.gem
baf2a7d294b0f5cff209f754e877eeebb9263115c3f91bf91255733beb9df84f  actionmailer-6.0.2.2.gem
58c0f04386b014e5d4a8a1c1a48a9a67f3fb38243a3be74d7201dc18d68de25c  actionpack-6.0.2.2.gem
872fb41b79794eaa9d1007e4b2e73cfa031ab2a47e5ee8cdae362518d917fed9  actiontext-6.0.2.2.gem
5e43aae3f0f6961d5dd85002147cccf2dbadfe88f41725d874a1b42e76bd7117  actionview-6.0.2.2.gem
7ed215efd26e335d8ce56dbf141b735548e33bf6cf9e953f22558e370d4b3fe3  activejob-6.0.2.2.gem
35559978a7641c85d47709c7c3b75fcc456b1ec882631ffeba82e8a4e12f99cd  activemodel-6.0.2.2.gem
4c6aae2cfa9d19ac9901c3b2514fb1c3ccd82b61839f2b52d6711edc00013c80  activerecord-6.0.2.2.gem
818c65056c5e58df009bdd89fef099e3b4abcd99f4836360713b646dfb60715e  activestorage-6.0.2.2.gem
8b73152669af7b8e3840e16052d6d951620e07c63bfc650bae88e5b86643a9d5  activesupport-6.0.2.2.gem
4b789dc6d942e133032485169aa30553482b528ffea5dd52a3bab853fca0c822  rails-6.0.2.2.gem
5b9d0d0a814ce9f5061aabd24d31e7bcc6864f6fa16565c1b3d9dc646c6b9ab1  railties-6.0.2.2.gem
```

Here are the checksums for 5.2.4.2:

```
70c10e163e526fd80d9eacaef7dc57209d24081a683e558acfd6b8f08a51ac35  actioncable-5.2.4.2.gem
007c391895214ce89fa11c10d9593d4cb83d1bf139a1653d95f4c6311c56b36c  actionmailer-5.2.4.2.gem
f021075fcc86739b443054df65985daaa463683f0950b8625fb42b8255851320  actionpack-5.2.4.2.gem
95bbbbd002e2c4b25fab1f1b16152472502bc5ae854df48a2674dfd057c6a1d3  actionview-5.2.4.2.gem
f593868d6ea71b0a794ab80a85fb504aa3a633d5c1af90060764e8c540b6a0b0  activejob-5.2.4.2.gem
0d6d5387c893ff282bfeaf93f866148530e39f5fe3fc41351a38847ec059cf65  activemodel-5.2.4.2.gem
c80502e6fe56967d5d9440874693f7077def06defd077a0a07f8471ca5823f28  activerecord-5.2.4.2.gem
3301753069dfc94659e232453a745b597fa1270664ae6d4667b58e386186b9f7  activestorage-5.2.4.2.gem
6dc8c752d3db60796bce8239d5255ff3ebcd3ca564c114cd85e7728565715b47  activesupport-5.2.4.2.gem
61188ba5392b4fc7d028b428c52ac9f8e4cd913314dd86c52b7aae539d3f3678  rails-5.2.4.2.gem
bfb6419b0796d74a23280067539aa2c38eb695dd9540a876c86ba9fd438ffe32  railties-5.2.4.2.gem
```

Thanks to Jesse Campos for reporting this issue!

Have a good day!

