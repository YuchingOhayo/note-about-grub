---
title: grub-mkconfig
nav_order: 6032
has_children: false
parent: Command
grand_parent: Ubuntu
---


# grub-mkconfig

## 關於 grub-mkconfig


執行

``` sh
which grub-mkconfig
```

顯示

```
/usr/sbin/grub-mkconfig
```

執行

``` sh
file /usr/sbin/grub-mkconfig
```

或是執行

``` sh
file $(which grub-mkconfig)
```

顯示

```
/usr/sbin/grub-mkconfig: POSIX shell script, ASCII text executable
```

執行

``` sh
dpkg -S /usr/sbin/grub-mkconfig
```

或是執行

``` sh
dpkg -S $(which grub-mkconfig)
```

顯示

```
grub-common: /usr/sbin/grub-mkconfig
```

執行

``` sh
less /usr/sbin/grub-mkconfig
```

或是執行

``` sh
less $(which grub-mkconfig)
```

## Manpage

* man [grub-mkconfig](http://manpages.ubuntu.com/manpages/focal/en/man8/grub-mkconfig.8.html)

## Package

* [grub-common](https://packages.ubuntu.com/focal/grub-common) / [filelist](https://packages.ubuntu.com/focal/amd64/grub-common/filelist)
