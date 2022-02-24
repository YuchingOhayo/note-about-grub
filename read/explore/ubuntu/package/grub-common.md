---
title: grub-common
nav_order: 6021
has_children: false
parent: Package
grand_parent: Ubuntu
---


# grub-common

## Package

* [grub-common](https://packages.ubuntu.com/focal/grub-common) / [filelist](https://packages.ubuntu.com/focal/amd64/grub-common/filelist)

## 關於 Package: grub-common

執行

``` sh
dpkg -l grub-common
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version           Architecture Description
+++-==============-=================-============-=======================================
ii  grub-common    2.04-1ubuntu26.13 amd64        GRand Unified Bootloader (common files)
```

執行

``` sh
dpkg -L grub-common | sort
```

顯示

```
/.
/etc
/etc/default
/etc/default/grub.d
/etc/default/grub.d/init-select.cfg
/etc/grub.d
/etc/grub.d/00_header
/etc/grub.d/05_debian_theme
/etc/grub.d/10_linux
/etc/grub.d/10_linux_zfs
/etc/grub.d/20_linux_xen
/etc/grub.d/30_os-prober
/etc/grub.d/30_uefi-firmware
/etc/grub.d/40_custom
/etc/grub.d/41_custom
/etc/grub.d/README
/etc/init.d
/etc/init.d/grub-common
/etc/pm
/etc/pm/sleep.d
/etc/pm/sleep.d/10_grub-common
/lib
/lib/systemd
/lib/systemd/system
/lib/systemd/system/grub-common.service
/lib/systemd/system/grub-initrd-fallback.service
/usr
/usr/bin
/usr/bin/grub-editenv
/usr/bin/grub-file
/usr/bin/grub-fstest
/usr/bin/grub-glue-efi
/usr/bin/grub-kbdcomp
/usr/bin/grub-menulst2cfg
/usr/bin/grub-mkfont
/usr/bin/grub-mkimage
/usr/bin/grub-mklayout
/usr/bin/grub-mknetdir
/usr/bin/grub-mkpasswd-pbkdf2
/usr/bin/grub-mkrelpath
/usr/bin/grub-mkrescue
/usr/bin/grub-mkstandalone
/usr/bin/grub-mount
/usr/bin/grub-render-label
/usr/bin/grub-script-check
/usr/bin/grub-syslinux2cfg
/usr/lib
/usr/lib/grub
/usr/lib/grub/grub-mkconfig_lib
/usr/lib/grub/grub-multi-install
/usr/sbin
/usr/sbin/grub-macbless
/usr/sbin/grub-mkconfig
/usr/sbin/grub-mkdevicemap
/usr/sbin/grub-probe
/usr/share
/usr/share/apport
/usr/share/apport/package-hooks
/usr/share/apport/package-hooks/source_grub2.py
/usr/share/bash-completion
/usr/share/bash-completion/completions
/usr/share/bash-completion/completions/grub
/usr/share/bash-completion/completions/grub-editenv
/usr/share/bash-completion/completions/grub-mkconfig
/usr/share/bash-completion/completions/grub-mkfont
/usr/share/bash-completion/completions/grub-mkimage
/usr/share/bash-completion/completions/grub-mkpasswd-pbkdf2
/usr/share/bash-completion/completions/grub-mkrescue
/usr/share/bash-completion/completions/grub-probe
/usr/share/bash-completion/completions/grub-script-check
/usr/share/bug
/usr/share/bug/grub-common
/usr/share/bug/grub-common/presubj
/usr/share/bug/grub-common/script
/usr/share/doc
/usr/share/doc/grub-common
/usr/share/doc/grub-common/AUTHORS
/usr/share/doc/grub-common/changelog.Debian.gz
/usr/share/doc/grub-common/copyright
/usr/share/doc/grub-common/examples
/usr/share/doc/grub-common/examples/grub.cfg
/usr/share/doc/grub-common/NEWS.Debian.gz
/usr/share/doc/grub-common/NEWS.gz
/usr/share/doc/grub-common/README
/usr/share/doc/grub-common/THANKS
/usr/share/doc/grub-common/TODO
/usr/share/grub
/usr/share/grub/ascii.h
/usr/share/grub/ascii.pf2
/usr/share/grub/canonical-uefi-ca.crt
/usr/share/grub/euro.pf2
/usr/share/grub/grub-check-signatures
/usr/share/grub/grub-mkconfig_lib
/usr/share/grub/unicode.pf2
/usr/share/grub/widthspec.h
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/grub-editenv.1.gz
/usr/share/man/man1/grub-file.1.gz
/usr/share/man/man1/grub-fstest.1.gz
/usr/share/man/man1/grub-glue-efi.1.gz
/usr/share/man/man1/grub-kbdcomp.1.gz
/usr/share/man/man1/grub-menulst2cfg.1.gz
/usr/share/man/man1/grub-mkfont.1.gz
/usr/share/man/man1/grub-mkimage.1.gz
/usr/share/man/man1/grub-mklayout.1.gz
/usr/share/man/man1/grub-mknetdir.1.gz
/usr/share/man/man1/grub-mkpasswd-pbkdf2.1.gz
/usr/share/man/man1/grub-mkrelpath.1.gz
/usr/share/man/man1/grub-mkrescue.1.gz
/usr/share/man/man1/grub-mkstandalone.1.gz
/usr/share/man/man1/grub-mount.1.gz
/usr/share/man/man1/grub-render-label.1.gz
/usr/share/man/man1/grub-script-check.1.gz
/usr/share/man/man1/grub-syslinux2cfg.1.gz
/usr/share/man/man8
/usr/share/man/man8/grub-macbless.8.gz
/usr/share/man/man8/grub-mkconfig.8.gz
/usr/share/man/man8/grub-mkdevicemap.8.gz
/usr/share/man/man8/grub-probe.8.gz
/var
/var/lib
/var/lib/grub
/var/lib/grub/esp
/var/lib/grub/ucf
```

執行

``` sh
apt-cache show grub-common
```

顯示

```
Package: grub-common
Architecture: amd64
Version: 2.04-1ubuntu26.13
Built-Using: lzo2 (= 2.10-2)
Multi-Arch: foreign
Priority: optional
Section: admin
Source: grub2
Origin: Ubuntu
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: GRUB Maintainers <pkg-grub-devel@alioth-lists.debian.net>
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Installed-Size: 13340
Depends: libc6 (>= 2.28), libdevmapper1.02.1 (>= 2:1.02.36), libefiboot1 (>= 37), libefivar1 (>= 37), libfreetype6 (>= 2.2.1), libfuse2 (>= 2.8.4-1.4), liblzma5 (>= 5.1.1alpha+20120614), debconf (>= 0.5) | debconf-2.0, gettext-base, lsb-base (>= 3.0-6)
Recommends: os-prober (>= 1.33)
Suggests: multiboot-doc, grub-emu, xorriso (>= 0.5.6.pl00), desktop-base (>= 4.0.6), console-setup
Conflicts: init-select
Breaks: apport (<< 2.1.1), friendly-recovery (<< 0.2.13), lupin-support (<< 0.55), mdadm (<< 2.6.7-2)
Replaces: grub-coreboot (<< 2.00-4), grub-efi (<< 1.99-1), grub-efi-amd64 (<< 2.00-4), grub-efi-ia32 (<< 2.00-4), grub-efi-ia64 (<< 2.00-4), grub-ieee1275 (<< 2.00-4), grub-linuxbios (<< 1.96+20080831-1), grub-pc (<< 2.00-4), grub-yeeloong (<< 2.00-4), init-select
Filename: pool/main/g/grub2/grub-common_2.04-1ubuntu26.13_amd64.deb
Size: 1874536
MD5sum: 2004913f1f217ca02ea4f8db15d2766b
SHA1: 29497f0c730e80a971549e344fe2cbc8b8433038
SHA256: 4f7f17066e9b83dc6ce551f55cb524d43d27f2b1bd036af0985f4a56bb5cd258
SHA512: 9df6eb1ca8c87625942a821e910b17d96d275b8a1fb484489b3bdb9110135b4eac3625649f4cd89d8c315bbde6ec7e9b1164624bcd12cb387ec8905457f079ec
Homepage: https://www.gnu.org/software/grub/
Description-en: GRand Unified Bootloader (common files)
 This package contains common files shared by the distinct flavours of GRUB.
 It is shared between GRUB Legacy and GRUB 2, although a number of files
 specific to GRUB 2 are here as long as they do not break GRUB Legacy.
Description-md5: 6e1c01c5245ffb9578aee58ee944229b
Task: ubuntu-live, kubuntu-live, xubuntu-live, lubuntu-live, ubuntustudio-desktop-core, ubuntustudio-desktop, ubuntukylin-live, ubuntu-mate-live, ubuntu-budgie-live
```
