---
layout: post
title: 'Rails 6.0.4.3, 6.1.4.3, and 7.0.0.rc3 have been released'
categories:
author: tenderlove
published: true
date: 2021-12-14 15:11:00 -08:00
---
Hi everyone again!!!  Rails versions 6.0.4.3, 6.1.4.3, and 7.0.0.rc3 have been released!

This release wasn't a security release.  There was a bug in the default
configuration of the previous release such that requests in development with a
port number wouldn't be considered "authorized" requests.  Requests to
"localhost:3000" should work in this new version.

I'm sorry about the inconvenience and I hope this upgrade is smooth.

Thanks everyone!

-Aaron ❤️

```
$ shasum *6.0.4.3*
0ba4b54347d2573b8d0ac7954ede05aca6ac8588  actioncable-6.0.4.3.gem
31609fc522ea460f1a3fbc3ea42b6f37f8210ed1  actionmailbox-6.0.4.3.gem
dddae75ac2f0b70d6ff24a61f9321fb68865787b  actionmailer-6.0.4.3.gem
831509b4bf703e69de769b79e7351062640dffc3  actionpack-6.0.4.3.gem
798667faf76bbcae7d0d5dc7e4d7552f7e680e19  actiontext-6.0.4.3.gem
cf22a4cf6aac54b5204026a5b0a57a4276ac62bf  actionview-6.0.4.3.gem
568f47984bf9bdcf2c9cefe3e763d36204588a0d  activejob-6.0.4.3.gem
318b01435cbbeafbcba63ba2fe080f6864cd59fc  activemodel-6.0.4.3.gem
0a8d2c1136cbb7dbc7f0feed8e62f0924aa2f87b  activerecord-6.0.4.3.gem
54c459a6c3df6e833154da2be37c2255e56aa716  activestorage-6.0.4.3.gem
e12c6288d72479ef40e8da82e65bdd36345f60d5  activesupport-6.0.4.3.gem
bc80c568936f4a2aec10416f042b7f15029a3ee4  rails-6.0.4.3.gem
ea229212caff4e0f7a852eadc9ea04500416e4d5  railties-6.0.4.3.gem
$ shasum *6.1.4.3*
838fdffd19fa53e5f43169a456977f6b8ac2d583  actioncable-6.1.4.3.gem
bd9c3c05109853bd89519816fd013d848c8bd16b  actionmailbox-6.1.4.3.gem
5a8b85eefa6c3c84f707a833c2d39628ead3519d  actionmailer-6.1.4.3.gem
ac45e7ede568d982e510cc60307d535fd93a8105  actionpack-6.1.4.3.gem
f78b6cf197f4a9482ca9fd62c440d7e800feff16  actiontext-6.1.4.3.gem
0ea10c42d0e160871ee0f715dbb98160eda6e127  actionview-6.1.4.3.gem
fc106e690b074450c21a5100f4ee9a7398b74431  activejob-6.1.4.3.gem
68416e0d02e3fe32903fbc41c259894df09751b9  activemodel-6.1.4.3.gem
caf471839d86b369781c9732e0e866ac30612739  activerecord-6.1.4.3.gem
2966cec12b3400d39d5e351531099bbf55157131  activestorage-6.1.4.3.gem
93b40f390b2dd112b513f801e20fa55bcbc23f81  activesupport-6.1.4.3.gem
1864c90c5e0721d1b135832b2d4b18247dedd8c5  rails-6.1.4.3.gem
7eb194c2a1fa35fcd308a62fc88e7d433f03de6c  railties-6.1.4.3.gem
$ shasum *7.0.0.rc3*
093908195bdc3c408b1e1b3bfb10efb46cee2c8f  actioncable-7.0.0.rc3.gem
d952435a6a4a9c4865f109aa5f30288a827c88c4  actionmailbox-7.0.0.rc3.gem
d12d4324df2de2b4d10afecc87f8ebd5910df3ff  actionmailer-7.0.0.rc3.gem
d3fb3e58431a8d27160910829b5f6590a7f8f142  actionpack-7.0.0.rc3.gem
79a29b393e75020249a9abf8d6056e2f01a00af2  actiontext-7.0.0.rc3.gem
5dcaa8edb252e6bea906b06923d86b52cf94d470  actionview-7.0.0.rc3.gem
5e2f3f395c93b8596ccfcfededa7224b26fbc1de  activejob-7.0.0.rc3.gem
0d4bcfe45dd26d1e99427bf56dd569c4d21bc23c  activemodel-7.0.0.rc3.gem
944bedcabf7ac3992d43da1bf0f0256396513ed3  activerecord-7.0.0.rc3.gem
ba08fb6e5f87ea091aaa227a9a9f6d48767cb483  activestorage-7.0.0.rc3.gem
5bc6851ecc0b939b8d5267ed7a93be4b6308cc15  activesupport-7.0.0.rc3.gem
b7a3d541e4c591cb9a882648204cb874f4b157f9  rails-7.0.0.rc3.gem
493be1abdd7357279b01aee4bdf18668d529dd6f  railties-7.0.0.rc3.gem
```
