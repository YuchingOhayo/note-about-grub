---
title: grubrc-theme-ctrl
nav_order: 8012
has_children: false
parent: grubrc-profile
grand_parent: 專案
---

# grubrc-theme-ctrl


## 專案連結

* [grubrc-theme-ctrl](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl)


## 使用範例


### install

run

``` sh
grubrc-theme-ctrl install poly_dark https://github.com/shvchk/poly-dark.git
```

### remove

run

``` sh
grubrc-theme-ctrl remove poly_dark
```


### list

run

``` sh
grubrc-theme-ctrl list
```

show

```
atomic
big_sur
deepin
dracula
fallout
monterey
pentract
poly_dark
poly_light
virtual_future
```

### preview

run

``` sh
grubrc-theme-ctrl preview poly_dark
```

### set

run

``` sh
grubrc-theme-ctrl set poly_dark
```

### get

run

``` sh
grubrc-theme-ctrl get
```

show

```
poly_dark
```


### fzf

run

``` sh
grubrc-theme-ctrl fzf
```


### preview_fzf

run

``` sh
grubrc-theme-ctrl preview_fzf
```


### path_list

run

``` sh
grubrc-theme-ctrl path_list
```

show

```
/boot/grub/themes/atomic/theme.txt
/boot/grub/themes/big_sur/theme.txt
/boot/grub/themes/deepin/theme.txt
/boot/grub/themes/dracula/theme.txt
/boot/grub/themes/fallout/theme.txt
/boot/grub/themes/monterey/theme.txt
/boot/grub/themes/pentract/theme.txt
/boot/grub/themes/poly_dark/theme.txt
/boot/grub/themes/poly_light/theme.txt
/boot/grub/themes/virtual_future/theme.txt
```

### path_preview

run

``` sh
grubrc-theme-ctrl path_preview /boot/grub/themes/poly_dark/theme.txt
```

run

``` sh
grubrc-theme-ctrl path_preview /usr/share/grub/themes/manjaro/theme.txt
```


### path_set

run

``` sh
grubrc-theme-ctrl path_set /boot/grub/themes/poly_dark/theme.txt
```

run

``` sh
grubrc-theme-ctrl path_set /usr/share/grub/themes/manjaro/theme.txt
```

### path_get

run

``` sh
grubrc-theme-ctrl path_get
```

show

```
/boot/grub/themes/poly_dark/theme.txt
```
