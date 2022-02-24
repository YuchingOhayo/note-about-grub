---
title: grub-pc
nav_order: 6023
has_children: false
parent: Package
grand_parent: Ubuntu
---


# grub-pc

## Package

* [grub-pc](https://packages.ubuntu.com/focal/grub-pc) / [filelist](https://packages.ubuntu.com/focal/amd64/grub-pc/filelist)

## 關於 Package: grub-pc

執行

``` sh
dpkg -l grub-pc
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version           Architecture Description
+++-==============-=================-============-=====================================================
ii  grub-pc        2.04-1ubuntu26.13 amd64        GRand Unified Bootloader, version 2 (PC/BIOS version)
```

執行

``` sh
dpkg -L grub-pc | sort
```

顯示

```
/.
/usr
/usr/bin
/usr/bin/grub-ntldr-img
/usr/lib
/usr/lib/grub-legacy
/usr/lib/grub-legacy/update-grub
/usr/sbin
/usr/sbin/grub-bios-setup
/usr/sbin/upgrade-from-grub-legacy
/usr/share
/usr/share/bash-completion
/usr/share/bash-completion/completions
/usr/share/bash-completion/completions/grub-bios-setup
/usr/share/bug
/usr/share/bug/grub-pc
/usr/share/bug/grub-pc/presubj
/usr/share/bug/grub-pc/script
/usr/share/doc
/usr/share/doc/grub-pc
/usr/share/man
/usr/share/man/man8
/usr/share/man/man8/grub-bios-setup.8.gz
```
