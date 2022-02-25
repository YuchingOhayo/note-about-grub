---
title: /boot/grub/grub.cfg
nav_order: 6052
has_children: false
parent: File
grand_parent: Ubuntu
---


# /boot/grub/grub.cfg


## 關於「/boot/grub/grub.cfg」

執行

``` sh
file /boot/grub/grub.cfg
```

顯示

```
/boot/grub/grub.cfg: UTF-8 Unicode text, with very long lines
```

執行

``` sh
dpkg -S /boot/grub/grub.cfg
```

顯示

```
dpkg-query: no path found matching pattern /boot/grub/grub.cfg
```

對照「[/etc/grub.d](https://samwhelp.github.io/note-about-grub/read/explore/ubuntu/dir/etc_grub_d.html)」這個資料夾，

簡易探索「/boot/grub/grub.cfg」這個檔案。

執行

```
grep '### BEGIN' /boot/grub/grub.cfg
```

顯示

```
### BEGIN /etc/grub.d/00_header ###
### BEGIN /etc/grub.d/05_debian_theme ###
### BEGIN /etc/grub.d/10_linux ###
### BEGIN /etc/grub.d/10_linux_zfs ###
### BEGIN /etc/grub.d/20_linux_xen ###
### BEGIN /etc/grub.d/20_memtest86+ ###
### BEGIN /etc/grub.d/30_os-prober ###
### BEGIN /etc/grub.d/30_uefi-firmware ###
### BEGIN /etc/grub.d/40_custom ###
### BEGIN /etc/grub.d/41_custom ###
```

執行

```
grep '### END' /boot/grub/grub.cfg
```

顯示

```
### END /etc/grub.d/00_header ###
### END /etc/grub.d/05_debian_theme ###
### END /etc/grub.d/10_linux ###
### END /etc/grub.d/10_linux_zfs ###
### END /etc/grub.d/20_linux_xen ###
### END /etc/grub.d/20_memtest86+ ###
### END /etc/grub.d/30_os-prober ###
### END /etc/grub.d/30_uefi-firmware ###
### END /etc/grub.d/40_custom ###
### END /etc/grub.d/41_custom ###
```

執行

```
grep '### BEGIN /etc/grub.d/40_custom ###' /boot/grub/grub.cfg -A 5
```

顯示

```
### BEGIN /etc/grub.d/40_custom ###
# This file provides an easy way to add custom menu entries.  Simply type the
# menu entries you want to add after this comment.  Be careful not to change
# the 'exec tail' line above.

### END /etc/grub.d/40_custom ###
```
