---
title: update-grub
nav_order: 6011
has_children: false
parent: Command
grand_parent: Ubuntu
---

# update-grub

## 關於 update-grub2

執行

``` sh
which update-grub2
```

顯示

```
/usr/sbin/update-grub2
```

執行

``` sh
file /usr/sbin/update-grub2
```

或是執行

``` sh
file $(which update-grub2)
```

顯示

```
/usr/sbin/update-grub2: symbolic link to update-grub
```

執行

``` sh
dpkg -S /usr/sbin/update-grub2
```

或是執行

``` sh
dpkg -S $(which update-grub2)
```

顯示

```
grub2-common: /usr/sbin/update-grub2
```

## 關於 update-grub


執行

``` sh
which update-grub
```

顯示

```
/usr/sbin/update-grub
```

執行

``` sh
file /usr/sbin/update-grub
```

或是執行

``` sh
file $(which update-grub)
```

顯示

```
/usr/sbin/update-grub: POSIX shell script, ASCII text executable
```

執行

``` sh
dpkg -S /usr/sbin/update-grub
```

或是執行

``` sh
dpkg -S $(which update-grub)
```

顯示

```
grub2-common: /usr/sbin/update-grub
```

執行

``` sh
cat /usr/sbin/update-grub
```

或是執行

``` sh
cat $(which update-grub)
```

顯示

```
#!/bin/sh
set -e
exec grub-mkconfig -o /boot/grub/grub.cfg "$@"
```

## 關於 grub-mkconfig

請參考「[grub-mkconfig](grub-mkconfig)」。


## Manpage

* man [update-grub](http://manpages.ubuntu.com/manpages/focal/en/man8/update-grub.8.html)
* man [update-grub2](http://manpages.ubuntu.com/manpages/focal/en/man8/update-grub2.8.html)
* man [grub-mkconfig](http://manpages.ubuntu.com/manpages/focal/en/man8/grub-mkconfig.8.html)

## Package

* [grub2-common](https://packages.ubuntu.com/focal/grub2-common) / [filelist](https://packages.ubuntu.com/focal/amd64/grub2-common/filelist)
