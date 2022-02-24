---
title: /etc/grub.d/41_custom
nav_order: 6055
has_children: false
parent: File
grand_parent: Ubuntu
---


# /etc/grub.d/41_custom


## 關於「/etc/grub.d/41_custom」

執行

``` sh
file /etc/grub.d/41_custom
```

顯示

```
/etc/grub.d/41_custom: POSIX shell script, ASCII text executable
```

執行

``` sh
dpkg -S /etc/grub.d/41_custom
```

顯示

```
grub-common: /etc/grub.d/41_custom
```


執行

``` sh
cat /etc/grub.d/41_custom
```

顯示

```
#!/bin/sh
cat <<EOF
if [ -f  \${config_directory}/custom.cfg ]; then
  source \${config_directory}/custom.cfg
elif [ -z "\${config_directory}" -a -f  \$prefix/custom.cfg ]; then
  source \$prefix/custom.cfg;
fi
EOF
```

## 對照

請參考「[/etc/grub.d/41_custom](https://samwhelp.github.io/note-about-grub/read/explore/ubuntu/file/etc_grub_d_41_custom.html)」
