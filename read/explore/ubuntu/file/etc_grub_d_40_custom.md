---
title: /etc/grub.d/40_custom
nav_order: 6054
has_children: false
parent: File
grand_parent: Ubuntu
---


# /etc/grub.d/40_custom


## 關於「/etc/grub.d/40_custom」

執行

``` sh
file /etc/grub.d/40_custom
```

顯示

```
/etc/grub.d/40_custom: POSIX shell script, ASCII text executable
```

執行

``` sh
dpkg -S /etc/grub.d/40_custom
```

顯示

```
grub-common: /etc/grub.d/40_custom
```


執行

``` sh
cat /etc/grub.d/40_custom
```

顯示

```
#!/bin/sh
exec tail -n +3 $0
# This file provides an easy way to add custom menu entries.  Simply type the
# menu entries you want to add after this comment.  Be careful not to change
# the 'exec tail' line above.
```
