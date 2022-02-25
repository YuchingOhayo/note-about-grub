---
title: /boot/grub/custom.cfg
nav_order: 1060
has_children: false
parent: 入門
---


# /boot/grub/custom.cfg

## Path

* [/etc/grub.d/41_custom](https://samwhelp.github.io/note-about-grub/read/explore/ubuntu/file/etc_grub_d_41_custom.html)
* [/boot/grub/custom.cfg](https://samwhelp.github.io/note-about-grub/read/explore/ubuntu/file/boot_grub_custom_cfg.html)


## 關於「/boot/grub/custom.cfg」

延續「[自訂 Gurb Menu Entry](https://samwhelp.github.io/note-about-grub/read/start/custom_menu_entry.html)」提到的，

闡述「/boot/grub/custom.cfg」的使用方式。

舉例：

修改「[/boot/grub/custom.cfg](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Util/System/custom.cfg)」，內容如下


```


menuentry 'Reboot Computer' --class restart {
	reboot
}


menuentry 'Shutdown Computer' --class shutdown {
	halt
}
```

特別要注意的是，「不需要」「[/etc/grub.d/40_custom](https://samwhelp.github.io/note-about-grub/read/start/40_custom.html)」提到的，最前面的那兩行


也「不需要」執行「sudo update-grub」，就會生效。


## 完整範例

* [Demo Grub Boot Menu Entry](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Util/System)
* [Demo Grub Boot ISO / Ubuntu](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Ubuntu/daily-live)


## 相關文件

* $ info grub -n '[Simple configuration](https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html#Simple-configuration)'
* $ info grub -n '[menuentry](https://www.gnu.org/software/grub/manual/grub/html_node/menuentry.html)'
* $ info grub -n '[halt](https://www.gnu.org/software/grub/manual/grub/html_node/halt.html)'
* $ info grub -n '[reboot](https://www.gnu.org/software/grub/manual/grub/html_node/reboot.html)'




## 關於「custom.cfg」和「/etc/grub.d/41_custom」

關於「/boot/grub/custom.cfg」這個檔案載入的機制，

是由「/etc/grub.d/41_custom」提供的。


執行

``` sh
cat /etc/grub.d/41_custom
```

顯示


``` sh
#!/bin/sh
cat <<EOF
if [ -f  \${config_directory}/custom.cfg ]; then
  source \${config_directory}/custom.cfg
elif [ -z "\${config_directory}" -a -f  \$prefix/custom.cfg ]; then
  source \$prefix/custom.cfg;
fi
EOF

```


執行

``` sh
grep '### BEGIN /etc/grub.d/41_custom ###' /boot/grub/grub.cfg -A 6
```

顯示

```
### BEGIN /etc/grub.d/41_custom ###
if [ -f  ${config_directory}/custom.cfg ]; then
  source ${config_directory}/custom.cfg
elif [ -z "${config_directory}" -a -f  $prefix/custom.cfg ]; then
  source $prefix/custom.cfg;
fi
### END /etc/grub.d/41_custom ###
```


## 相關文件

* $ info grub -n '[source](https://www.gnu.org/software/grub/manual/grub/html_node/source.html)'
