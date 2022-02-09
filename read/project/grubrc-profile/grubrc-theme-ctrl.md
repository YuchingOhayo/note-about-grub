---
title: grubrc-theme-ctrl
nav_order: 8012
has_children: false
parent: grubrc-profile
grand_parent: 專案
---

# grubrc-theme-ctrl


## 連結

* [GRUB Themes](https://www.gnome-look.org/browse?cat=109)
* [How to Set GRUB Theme](https://samwhelp.github.io/note-about-grub/read/howto/use_theme.html)


## 專案連結

* [grubrc-theme-ctrl](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl)


## 使用範例


| 選項 | 動作 |
| --- | --- |
| [help](#help) | 輔助說明 |
| [debug](#debug) | 切換除錯狀態 |
| [install](#install) | 安裝單一佈景主題 |
| [remove](#remove) | 移除單一佈景主題 |
| [list](#list) | 佈景主題列表(已經安裝) |
| [preview](#preview) | 預覽佈景主題(指定名稱) |
| [set](#set) | 採用佈景主題 |
| [get](#get) | 目前採用佈景主題(目前採用名稱) |
| [fzf](#fzf) | 設定採用佈景主題選單 |
| [preview_fzf](#preview_fzf) | 預覽佈景主題選單 |


| 選項 | 動作 |
| --- | --- |
| [path_list](#path_list) | 佈景主題路徑列表(已經安裝) |
| [path_preview](#path_preview) | 預覽佈景主題(指定路徑) |
| [path_set](#path_set) | 採用佈景主題(指定路徑) |
| [path_get](#path_get) | 目前採用佈景主題(目前採用路徑) |


### help

執行

``` sh
grubrc-theme-ctrl
```

或是執行

``` sh
grubrc-theme-ctrl help
```

### debug

執行

``` sh
export DEBUG_GRUBRC_THEME_CTRL=true
```

### install

執行

``` sh
grubrc-theme-ctrl install poly_dark https://github.com/shvchk/poly-dark.git
```

> 也可以先透過「[grubrc-theme-get](https://samwhelp.github.io/note-about-grub/read/project/grubrc-profile/grubrc-theme-get.html)」這個指令，來輔助安裝「GRUB佈景主題」。


### remove

執行

``` sh
grubrc-theme-ctrl remove poly_dark
```


### list

執行

``` sh
grubrc-theme-ctrl list
```

顯示

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

執行

``` sh
grubrc-theme-ctrl preview poly_dark
```

### set

執行

``` sh
grubrc-theme-ctrl set poly_dark
```

### get

執行

``` sh
grubrc-theme-ctrl get
```

顯示

```
poly_dark
```


### fzf

執行

``` sh
grubrc-theme-ctrl fzf
```


### preview_fzf

執行

``` sh
grubrc-theme-ctrl preview_fzf
```


### path_list

執行

``` sh
grubrc-theme-ctrl path_list
```

顯示

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

執行

``` sh
grubrc-theme-ctrl path_preview /boot/grub/themes/poly_dark/theme.txt
```

執行

``` sh
grubrc-theme-ctrl path_preview /usr/share/grub/themes/manjaro/theme.txt
```


### path_set

執行

``` sh
grubrc-theme-ctrl path_set /boot/grub/themes/poly_dark/theme.txt
```

執行

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
