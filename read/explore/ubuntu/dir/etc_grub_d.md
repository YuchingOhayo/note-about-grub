---
title: /etc/grub.d
nav_order: 6041
has_children: false
parent: Dir
grand_parent: Ubuntu
---


# /etc/grub.d

## 關於「/etc/grub.d」

執行

``` sh
ls /etc/grub.d -1
```

顯示

```
00_header
05_debian_theme
10_linux
10_linux_zfs
20_linux_xen
20_memtest86+
30_os-prober
30_uefi-firmware
40_custom
41_custom
README
```

執行

``` sh
dpkg -S /etc/grub.d
```

顯示

```
grub-common, memtest86+: /etc/grub.d
```

執行

``` sh
cat /etc/grub.d/README
```

顯示

```

All executable files in this directory are processed in shell expansion order.

  00_*: Reserved for 00_header.
  10_*: Native boot entries.
  20_*: Third party apps (e.g. memtest86+).

The number namespace in-between is configurable by system installer and/or
administrator.  For example, you can add an entry to boot another OS as
01_otheros, 11_otheros, etc, depending on the position you want it to occupy in
the menu; and then adjust the default setting via /etc/default/grub.
```
