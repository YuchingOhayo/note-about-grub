---
title: grubrc-theme-ctrl
nav_order: 8012
has_children: false
parent: grubrc-profile
grand_parent: 專案
---

# grubrc-theme-ctrl


## Link

* [grubrc-theme-ctrl](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl)


## Usage


### install

``` sh
grubrc-theme-ctrl install poly_dark https://github.com/shvchk/poly-dark.git
```

### remove

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
big_sur
deepin
dracula
fallout
poly_dark
poly_light
virtual_future
```

### set

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

``` sh
grubrc-theme-ctrl fzf
```


### preview_fzf

``` sh
grubrc-theme-ctrl preview_fzf
```


### path_list

``` sh
grubrc-theme-ctrl path_list
```

### path_preview

``` sh
grubrc-theme-ctrl path_preview /boot/grub/themes/poly_dark/theme.txt
```

``` sh
grubrc-theme-ctrl path_preview /usr/share/grub/themes/manjaro/theme.txt
```


### path_set

``` sh
grubrc-theme-ctrl path_set /boot/grub/themes/poly_dark/theme.txt
```

``` sh
grubrc-theme-ctrl path_set /usr/share/grub/themes/manjaro/theme.txt
```

### path_get

執行

``` sh
grubrc-theme-ctrl path_get
```

顯示

```
/boot/grub/themes/poly_dark/theme.txt
```
