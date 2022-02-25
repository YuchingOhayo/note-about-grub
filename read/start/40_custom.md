---
title: /etc/grub.d/40_custom
nav_order: 1050
has_children: false
parent: 入門
---


# /etc/grub.d/40_custom


## Path

* [/etc/grub.d/40_custom](https://samwhelp.github.io/note-about-grub/read/explore/ubuntu/file/etc_grub_d_40_custom.html)


## 關於「/etc/grub.d/40_custom」

延續「[自訂 Gurb Menu Entry](https://samwhelp.github.io/note-about-grub/read/start/custom_menu_entry.html)」提到的，

闡述「/etc/grub.d/40_custom」的使用方式。

舉例：

修改「[/etc/grub.d/40_custom](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_40_custom/Util/System/40_custom)」，內容如下


``` sh
#!/bin/sh
exec tail -n +3 $0
# This file provides an easy way to add custom menu entries.  Simply type the
# menu entries you want to add after this comment.  Be careful not to change
# the 'exec tail' line above.


menuentry 'Reboot Computer' --class restart {
	reboot
}


menuentry 'Shutdown Computer' --class shutdown {
	halt
}
```

特別要注意的是，「最前面兩行，一定要保留」

``` sh
#!/bin/sh
exec tail -n +3 $0
```


修改後，「需要」執行「sudo update-grub」，就會產生新的「/boot/grub/grub.cfg」。

可以執行下面指令，觀察「/boot/grub/grub.cfg」的內容，來確認。

``` sh
grep '### BEGIN /etc/grub.d/40_custom ###' /boot/grub/grub.cfg -A 14
```

顯示

```
### BEGIN /etc/grub.d/40_custom ###
# This file provides an easy way to add custom menu entries.  Simply type the
# menu entries you want to add after this comment.  Be careful not to change
# the 'exec tail' line above.


menuentry 'Reboot Computer' --class restart {
	reboot
}


menuentry 'Shutdown Computer' --class shutdown {
	halt
}
### END /etc/grub.d/40_custom ###
```


## 完整範例

* [Demo Grub Boot Menu Entry](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_40_custom/Util/System)
* [Demo Grub Boot ISO / Ubuntu](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_40_custom/Ubuntu/daily-live)

## 相關文件

* $ info grub -n '[Simple configuration](https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html#Simple-configuration)'
* $ info grub -n '[menuentry](https://www.gnu.org/software/grub/manual/grub/html_node/menuentry.html)'
* $ info grub -n '[halt](https://www.gnu.org/software/grub/manual/grub/html_node/halt.html)'
* $ info grub -n '[reboot](https://www.gnu.org/software/grub/manual/grub/html_node/reboot.html)'


## 接下來

接下來探索「[/boot/grub/custom.cfg](https://samwhelp.github.io/note-about-grub/read/start/custom_cfg.html)」這個檔案的用法。
