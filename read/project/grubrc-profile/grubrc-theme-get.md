---
title: grubrc-theme-get
nav_order: 8011
has_children: false
parent: grubrc-profile
grand_parent: 專案
---

# grubrc-theme-get


## 專案連結

* [grubrc-theme-get](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/project/grubrc-profile/grubrc-theme-get)


## 使用範例

| 選項 | 佈景主題 | 安裝路徑 |
| --- | --- | --- |
| [fzf](#fzf) | 提供fzf列表選項安裝 | |
| [all](#all) | 安裝以下所有的「theme」| |
| [poly_dark](#poly_dark) | [Poly dark](https://github.com/shvchk/poly-dark) | /boot/grub/themes/poly_dark |
| [poly_light](#poly_light) | [Poly light](https://github.com/shvchk/poly-light) | /boot/grub/themes/poly_light |
| [fallout](#fallout) | [Fallout](https://github.com/shvchk/fallout-grub-theme) | /boot/grub/themes/fallout |
| [dracula](#dracula) | [Dracula](https://github.com/zshzero/dracula-grub2) | /boot/grub/themes/dracula |
| [virtual_future](#virtual_future) | [Virtual Future](https://gitlab.com/deck451/virtual_future_grub_theme) | /boot/grub/themes/virtual_future |
| [deepin](#deepin) | [Deepin](https://github.com/linuxdeepin/deepin-grub2-themes) | /boot/grub/themes/deepin |
| [big_sur](#big_sur) | [Big Sur](https://github.com/Teraskull/bigsur-grub2-theme) | /boot/grub/themes/big_sur |
| [atomic](#atomic) | [Atomic](https://github.com/lfelipe1501/Atomic-GRUB2-Theme) | /boot/grub/themes/atomic |


### fzf

執行下面指令，提供fzf列表選項安裝

``` sh
grubrc-theme-get fzf
```

### all

執行下面指令，安裝以下所有的「theme」

``` sh
grubrc-theme-get all
```

### poly_dark

執行下面指令，單一安裝「theme / [poly_dark](https://github.com/shvchk/poly-dark)」

``` sh
grubrc-theme-get poly_dark
```

### poly_light

執行下面指令，單一安裝「theme / [poly_light](https://github.com/shvchk/poly-light)」

``` sh
grubrc-theme-get poly_light
```

### fallout

執行下面指令，單一安裝「theme / [fallout](https://github.com/shvchk/fallout-grub-theme)」

``` sh
grubrc-theme-get fallout
```

### dracula

執行下面指令，單一安裝「theme / [dracula](https://github.com/zshzero/dracula-grub2)」

``` sh
grubrc-theme-get dracula
```

### virtual_future

執行下面指令，單一安裝「theme / [virtual_future](https://gitlab.com/deck451/virtual_future_grub_theme/-/tree/main/virtual_future)」

``` sh
grubrc-theme-get virtual_future
```

### deepin

執行下面指令，單一安裝「theme / [deepin](https://github.com/linuxdeepin/deepin-grub2-themes/tree/master/themes/deepin)」

``` sh
grubrc-theme-get deepin
```

### big_sur

執行下面指令，單一安裝「theme / [big_sur](https://github.com/Teraskull/bigsur-grub2-theme/tree/master/bigsur)」

``` sh
grubrc-theme-get big_sur
```


### atomic

執行下面指令，單一安裝「theme / [atomic](https://github.com/lfelipe1501/Atomic-GRUB2-Theme/tree/master/Atomic)」

``` sh
grubrc-theme-get atomic
```


## 搭配使用範例


安裝某個「GRUB佈景主題後」，舉例，安裝完「[poly_dark](#poly_dark)」後，


若要預覽，則要搭配執行下面指令

``` sh
grubrc-theme-ctrl preview poly_dark
```

若要採用，則要搭配執行下面指令

``` sh
grubrc-theme-ctrl set poly_dark
```

## 搭配fzf選單範例

若要搭配fzf選單，

預覽選單的指令如下

``` sh
grubrc-theme-ctrl preview_fzf
```

採用選單的指令如下

``` sh
grubrc-theme-ctrl fzf
```
