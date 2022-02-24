---
title: grub2-common
nav_order: 6022
has_children: false
parent: Package
grand_parent: Ubuntu
---


# grub2-common

## Package

* [grub2-common](https://packages.ubuntu.com/focal/grub2-common) / [filelist](https://packages.ubuntu.com/focal/amd64/grub2-common/filelist)


## 關於 Package: grub2-common

執行

``` sh
dpkg -l grub2-common
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version           Architecture Description
+++-==============-=================-============-=====================================================
ii  grub2-common   2.04-1ubuntu26.13 amd64        GRand Unified Bootloader (common files for version 2)
```

執行

``` sh
dpkg -L grub2-common | sort
```

顯示

```
/.
/etc
/etc/kernel
/etc/kernel/postinst.d
/etc/kernel/postinst.d/zz-update-grub
/etc/kernel/postrm.d
/etc/kernel/postrm.d/zz-update-grub
/usr
/usr/sbin
/usr/sbin/grub-install
/usr/sbin/grub-reboot
/usr/sbin/grub-set-default
/usr/sbin/update-grub
/usr/sbin/update-grub2
/usr/share
/usr/share/bash-completion
/usr/share/bash-completion/completions
/usr/share/bash-completion/completions/grub-install
/usr/share/bash-completion/completions/grub-reboot
/usr/share/bash-completion/completions/grub-set-default
/usr/share/bug
/usr/share/bug/grub2-common
/usr/share/bug/grub2-common/presubj
/usr/share/bug/grub2-common/script
/usr/share/doc
/usr/share/doc/grub2-common
/usr/share/grub
/usr/share/grub/default
/usr/share/grub/default/grub
/usr/share/grub/default/grub.md5sum
/usr/share/info
/usr/share/info/grub-dev.info.gz
/usr/share/info/grub.info-1.gz
/usr/share/info/grub.info-2.gz
/usr/share/info/grub.info.gz
/usr/share/man
/usr/share/man/man8
/usr/share/man/man8/grub-install.8.gz
/usr/share/man/man8/grub-reboot.8.gz
/usr/share/man/man8/grub-set-default.8.gz
/usr/share/man/man8/update-grub2.8.gz
/usr/share/man/man8/update-grub.8.gz
```

執行

``` sh
apt-cache show grub2-common
```

顯示

```
Package: grub2-common
Architecture: amd64
Version: 2.04-1ubuntu26.13
Multi-Arch: foreign
Priority: optional
Section: admin
Source: grub2
Origin: Ubuntu
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: GRUB Maintainers <pkg-grub-devel@alioth-lists.debian.net>
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Installed-Size: 1310
Depends: grub-common (= 2.04-1ubuntu26.13), dpkg (>= 1.15.4) | install-info, libc6 (>= 2.28), libdevmapper1.02.1 (>= 2:1.02.36), libefiboot1 (>= 37), libefivar1 (>= 37), liblzma5 (>= 5.1.1alpha+20120614)
Conflicts: grub-legacy
Breaks: grub (<< 0.97-54), grub-cloud-amd64 (<< 0.0.4), grub-coreboot (<< 2.02+dfsg1-7), grub-doc (<< 0.97-29ubuntu60), grub-efi-amd64 (<< 2.04-1ubuntu44.2), grub-efi-arm (<< 2.02+dfsg1-7), grub-efi-arm64 (<< 2.04-1ubuntu44.2), grub-efi-ia32 (<< 2.02+dfsg1-7), grub-efi-ia64 (<< 2.02+dfsg1-7), grub-ieee1275 (<< 2.02+dfsg1-7), grub-legacy-doc (<< 0.97-29ubuntu60), grub-pc (<< 2.02+dfsg1-7), grub-uboot (<< 2.02+dfsg1-7), grub-xen (<< 2.02+dfsg1-7), grub-yeeloong (<< 2.02+dfsg1-7), shim (<< 13)
Replaces: grub, grub-cloud-amd64 (<< 0.0.4), grub-common (<< 1.99-1), grub-coreboot (<< 2.02+dfsg1-7), grub-doc (<< 0.97-29ubuntu60), grub-efi-amd64 (<< 2.04-1ubuntu44.2~), grub-efi-arm (<< 2.02+dfsg1-7), grub-efi-arm64 (<< 2.04-1ubuntu44.2~), grub-efi-ia32 (<< 2.02+dfsg1-7), grub-efi-ia64 (<< 2.02+dfsg1-7), grub-ieee1275 (<< 2.02+dfsg1-7), grub-legacy, grub-legacy-doc (<< 0.97-29ubuntu60), grub-pc (<< 2.02+dfsg1-7), grub-uboot (<< 2.02+dfsg1-7), grub-xen (<< 2.02+dfsg1-7), grub-yeeloong (<< 2.02+dfsg1-7)
Filename: pool/main/g/grub2/grub2-common_2.04-1ubuntu26.13_amd64.deb
Size: 589800
MD5sum: 3ad3932430a0601c68b5756f61182d90
SHA1: 8463ff3957192d200cf56d5d35ec765391c385f7
SHA256: 4804a797d97ff52cccf606e898f863a55e0333f0848de9b92ed1d4aa2947bc51
SHA512: ad598a2d2f90103601b29943640280eb41484e011cc446f74a78fb8c13d72c32d22c63dfea25921a4116c02d63e56d5592bcea85f8eab910b4f410fb5393e1fe
Homepage: https://www.gnu.org/software/grub/
Description-en: GRand Unified Bootloader (common files for version 2)
 This package contains common files shared by the distinct flavours of GRUB.
 The files in this package are specific to GRUB 2, and would break GRUB
 Legacy if installed on the same system.
Description-md5: a969e6536e745e177a340b30bdb5ba3f
Task: ubuntu-live, kubuntu-live, xubuntu-live, lubuntu-live, ubuntustudio-desktop-core, ubuntustudio-desktop, ubuntukylin-live, ubuntu-mate-live, ubuntu-budgie-live
```

## Manpage

執行

``` sh
dpkg -L grub2-common | grep '/man/man.*/'
```

顯示

``` sh
/usr/share/man/man8/grub-install.8.gz
/usr/share/man/man8/grub-reboot.8.gz
/usr/share/man/man8/grub-set-default.8.gz
/usr/share/man/man8/update-grub.8.gz
/usr/share/man/man8/update-grub2.8.gz
```

``` sh
dpkg -L grub2-common | grep '/man/man.*/' | awk -F '/' '{print $6}' | sort -u | awk -F '.' '{print "* man ["$1"](http://manpages.ubuntu.com/manpages/focal/en/man8/"$1".8.html)"}'
```

* man [grub-install](http://manpages.ubuntu.com/manpages/focal/en/man8/grub-install.8.html)
* man [grub-reboot](http://manpages.ubuntu.com/manpages/focal/en/man8/grub-reboot.8.html)
* man [grub-set-default](http://manpages.ubuntu.com/manpages/focal/en/man8/grub-set-default.8.html)
* man [update-grub2](http://manpages.ubuntu.com/manpages/focal/en/man8/update-grub2.8.html)
* man [update-grub](http://manpages.ubuntu.com/manpages/focal/en/man8/update-grub.8.html)


## bin

執行

``` sh
dpkg -L grub2-common | grep 'bin/'
```

顯示

```
/usr/sbin/grub-install
/usr/sbin/grub-reboot
/usr/sbin/grub-set-default
/usr/sbin/update-grub
/usr/sbin/update-grub2
```

## Link

* Ubuntu Basic Skill / [如何查詢某個套件有哪些使用手冊(man page)](https://samwhelp.github.io/book-ubuntu-basic-skill/book/content/manual/how-to-find-out-manpages-by-a-package.html)
* Debian Reference / Chapter 12. Programming / [12.1.6. Utility programs for shell script](https://www.debian.org/doc/manuals/debian-reference/ch12.en.html#_utility_programs_for_shell_script)
