
# grubrc-theme-ctrl

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-grub/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl/grubrc-theme-ctrl' -O "$HOME/.local/bin/grubrc-theme-ctrl"

chmod 755 "$HOME/.local/bin/grubrc-theme-ctrl"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-grub/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-grub/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl/remote-install.sh' -q -O - | bash
```


## Usage


### help

``` sh
$ grubrc-theme-ctrl
```

or

``` sh
$ grubrc-theme-ctrl help
```


### debug

``` sh
$ export DEBUG_GRUBRC_THEME_CTRL=true
```


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
big_sur
deepin
dracula
fallout
poly_dark
poly_light
virtual_future
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
/boot/grub/themes/big_sur/theme.txt
/boot/grub/themes/deepin/theme.txt
/boot/grub/themes/dracula/theme.txt
/boot/grub/themes/fallout/theme.txt
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
