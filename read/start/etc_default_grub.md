---
title: /etc/default/grub
nav_order: 1020
has_children: false
parent: 入門
---


# /etc/default/grub

## Path

* [/etc/default/grub](https://samwhelp.github.io/note-about-grub/read/explore/ubuntu/file/etc_default_grub.html)

## 關於「/etc/default/grub」

延續[上一篇](https://samwhelp.github.io/note-about-grub/read/start/grub_cfg.html)提到的，

在實務上，會先修改「/etc/default/grub」這個檔案，

然後再執行下面指令，產生新的「/boot/grub/grub.cfg」。

執行
``` sh
sudo update-grub
```

或是執行

``` sh
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

## 使用案例

最常見的使用案例，是設定採用「Grub的佈景主題」，

就會修改「/etc/default/grub」這個檔案。

加入類似下面這一行，

```
GRUB_THEME="/boot/grub/themes/dracula/theme.txt"
```

接著執行下面指令，產生新的「/boot/grub/grub.cfg」。

``` sh
sudo update-grub
```

詳細步驟，請參考另一篇「[設定採用佈景主題](https://samwhelp.github.io/note-about-grub/read/howto/use_theme.html)」的說明。


## 關於「/etc/default/grub.d/」

除了可以修改「/etc/default/grub」這個檔案，

也可以分成不同的檔案，副檔名為「.cfg」，

放在「/etc/default/grub.d/」這個資料夾。

舉例：

可以產生一個檔案「/etc/default/grub.d/background.cfg」，內容如下

``` sh
GRUB_BACKGROUND="/boot/grub/backgrounds/console-background.png"
```

或是執行執行下面指令產生

``` sh
sudo sh -c 'echo GRUB_BACKGROUND=\"/boot/grub/backgrounds/console-background.png\" > /etc/default/grub.d/background.cfg'
```




可以產生另一個檔案「/etc/default/grub.d/theme.cfg」，內容如下

``` sh
GRUB_THEME="/boot/grub/themes/poly-dark/theme.txt"
```

或是執行執行下面指令產生

``` sh
sudo sh -c 'echo GRUB_THEME=\"/boot/grub/themes/poly-dark/theme.txt\" > /etc/default/grub.d/theme.cfg'
```



接著執行下面指令，產生新的「/boot/grub/grub.cfg」。

``` sh
sudo update-grub
```


會顯示類似下面的提示訊息

```
Sourcing file `/etc/default/grub'
Sourcing file `/etc/default/grub.d/background.cfg'
Sourcing file `/etc/default/grub.d/init-select.cfg'
Sourcing file `/etc/default/grub.d/theme.cfg'
Generating grub configuration file ...
Found theme: /boot/grub/themes/poly-dark/theme.txt
Found background image: /boot/grub/backgrounds/console-background.png
...略...
```

## 深入探索

``` sh
which grub-mkconfig
```

顯示

```
/usr/sbin/grub-mkconfig
```

執行

``` sh
grep 'default/grub.d' /usr/sbin/grub-mkconfig -A 5
```

顯示

``` sh
for x in ${sysconfdir}/default/grub.d/*.cfg ; do
  if [ -e "${x}" ]; then
    gettext_printf "Sourcing file \`%s'\n" "${x}" 1>&2
    . "${x}"
  fi
done
```

執行

``` sh
grep 'default/grub.d' /usr/sbin/grub-mkconfig -A 5
```

顯示

``` sh
if test -f ${sysconfdir}/default/grub ; then
  gettext_printf "Sourcing file \`%s'\n" "${sysconfdir}/default/grub" 1>&2
  . ${sysconfdir}/default/grub
fi
for x in ${sysconfdir}/default/grub.d/*.cfg ; do
  if [ -e "${x}" ]; then
    gettext_printf "Sourcing file \`%s'\n" "${x}" 1>&2
    . "${x}"
  fi
done

```


## 接下來

接下來，來探索「[/etc/grub.d](https://samwhelp.github.io/note-about-grub/read/start/etc_grub_d.html)」這個資料夾。
