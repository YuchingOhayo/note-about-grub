---
title: 下載
nav_order: 9021
has_children: false
parent: ventoy
grand_parent: 連結
---


# 下載


可以到「[https://github.com/ventoy/Ventoy/releases](https://github.com/ventoy/Ventoy/releases)」找到最新的版本。

以「[Ventoy 1.0.71 release](https://github.com/ventoy/Ventoy/releases/tag/v1.0.71)」為例。


## 操作步驟

執行下面指令，下載「[ventoy-1.0.71-linux.tar.gz](https://github.com/ventoy/Ventoy/releases/download/v1.0.71/ventoy-1.0.71-linux.tar.gz)」。

``` sh
wget -c 'https://github.com/ventoy/Ventoy/releases/download/v1.0.71/ventoy-1.0.71-linux.tar.gz'
```

會下載一個檔案「ventoy-1.0.71-linux.tar.gz」。

接著執行下面的指令，解開「ventoy-1.0.71-linux.tar.gz」。


``` sh
tar xf ventoy-1.0.71-linux.tar.gz
```

會產生一個資料夾「ventoy-1.0.71」。


接著執行下面的指令，

``` sh
ls ventoy-1.0.71 -1
```

顯示

```
boot
CreatePersistentImg.sh
ExtendPersistentImg.sh
plugin
README
tool
ventoy
Ventoy2Disk.sh
VentoyGUI.aarch64
VentoyGUI.i386
VentoyGUI.mips64el
VentoyGUI.x86_64
VentoyPlugson.sh
VentoyVlnk.sh
VentoyWeb.sh
WebUI
```

執行下面的指令，


``` sh
ls ventoy-1.0.71 -1
```

顯示

```
ventoy-1.0.71
├── boot
│   ├── boot.img
│   └── core.img.xz
├── CreatePersistentImg.sh
├── ExtendPersistentImg.sh
├── plugin
│   └── ventoy
│       ├── theme
│       │   ├── background.png
│       │   ├── icons
│       │   │   ├── deepin.png
│       │   │   ├── red-hat.png
│       │   │   ├── ubuntu.png
│       │   │   └── vtoyiso.png
│       │   ├── menu_c.png
│       │   ├── menu_e.png
│       │   ├── menu_ne.png
│       │   ├── menu_n.png
│       │   ├── menu_nw.png
│       │   ├── menu_se.png
│       │   ├── menu_s.png
│       │   ├── menu_sw.png
│       │   ├── menu_w.png
│       │   ├── select_c.png
│       │   ├── slider_c.png
│       │   ├── slider_n.png
│       │   ├── slider_s.png
│       │   ├── terminal_box_c.png
│       │   ├── terminal_box_e.png
│       │   ├── terminal_box_ne.png
│       │   ├── terminal_box_n.png
│       │   ├── terminal_box_nw.png
│       │   ├── terminal_box_se.png
│       │   ├── terminal_box_s.png
│       │   ├── terminal_box_sw.png
│       │   ├── terminal_box_w.png
│       │   └── theme.txt
│       ├── ventoy_grub.cfg
│       └── ventoy.json
├── README
├── tool
│   ├── aarch64
│   │   ├── ash.xz
│   │   ├── hexdump.xz
│   │   ├── mkexfatfs.xz
│   │   ├── mount.exfat-fuse.xz
│   │   ├── Plugson.xz
│   │   ├── V2DServer.xz
│   │   ├── Ventoy2Disk.gtk3
│   │   ├── Ventoy2Disk.qt5
│   │   ├── vlnk.xz
│   │   ├── vtoycli.xz
│   │   └── xzcat
│   ├── distro_gui_type.json
│   ├── ENROLL_THIS_KEY_IN_MOKMANAGER.cer
│   ├── i386
│   │   ├── ash.xz
│   │   ├── hexdump.xz
│   │   ├── mkexfatfs.xz
│   │   ├── mount.exfat-fuse.xz
│   │   ├── Plugson.xz
│   │   ├── V2DServer.xz
│   │   ├── Ventoy2Disk.gtk2
│   │   ├── Ventoy2Disk.gtk3
│   │   ├── Ventoy2Disk.qt5
│   │   ├── vlnk.xz
│   │   ├── vtoycli.xz
│   │   └── xzcat
│   ├── languages.json
│   ├── mips64el
│   │   ├── ash.xz
│   │   ├── hexdump.xz
│   │   ├── mkexfatfs.xz
│   │   ├── mount.exfat-fuse.xz
│   │   ├── Plugson.xz
│   │   ├── V2DServer.xz
│   │   ├── Ventoy2Disk.gtk3
│   │   ├── Ventoy2Disk.qt5
│   │   ├── vlnk.xz
│   │   ├── vtoycli.xz
│   │   └── xzcat
│   ├── plugson.tar.xz
│   ├── VentoyGTK.glade
│   ├── ventoy_lib.sh
│   ├── VentoyWorker.sh
│   └── x86_64
│       ├── ash.xz
│       ├── hexdump.xz
│       ├── mkexfatfs.xz
│       ├── mount.exfat-fuse.xz
│       ├── Plugson.xz
│       ├── V2DServer.xz
│       ├── Ventoy2Disk.gtk2
│       ├── Ventoy2Disk.gtk3
│       ├── Ventoy2Disk.qt5
│       ├── vlnk.xz
│       ├── vtoycli.xz
│       └── xzcat
├── ventoy
│   ├── ventoy.disk.img.xz
│   └── version
├── Ventoy2Disk.sh
├── VentoyGUI.aarch64
├── VentoyGUI.i386
├── VentoyGUI.mips64el
├── VentoyGUI.x86_64
├── VentoyPlugson.sh
├── VentoyVlnk.sh
├── VentoyWeb.sh
└── WebUI
    ├── favicon.ico
    ├── index.html
    └── static
        ├── AdminLTE
        │   ├── css
        │   │   ├── AdminLTE.min.css
        │   │   └── skins
        │   │       └── skin-blue.min.css
        │   └── js
        │       └── app.min.js
        ├── bootstrap
        │   ├── css
        │   │   ├── bootstrap.min.css
        │   │   └── bootstrap-theme.min.css
        │   ├── fonts
        │   │   ├── glyphicons-halflings-regular.eot
        │   │   ├── glyphicons-halflings-regular.svg
        │   │   ├── glyphicons-halflings-regular.ttf
        │   │   ├── glyphicons-halflings-regular.woff
        │   │   └── glyphicons-halflings-regular.woff2
        │   └── js
        │       └── bootstrap.min.js
        ├── css
        │   ├── font-awesome.min.css
        │   ├── ionicons.min.css
        │   └── vtoy.css
        ├── fonts
        │   ├── fontawesome-webfont.ttf
        │   ├── fontawesome-webfont.woff
        │   ├── fontawesome-webfont.woff2
        │   ├── glyphicons-halflings-regular.ttf
        │   ├── glyphicons-halflings-regular.woff
        │   ├── glyphicons-halflings-regular.woff2
        │   ├── ionicons.eot
        │   └── ionicons.ttf
        ├── img
        │   ├── dropdown.png
        │   ├── refresh.ico
        │   └── VentoyLogo.png
        └── js
            ├── jQuery-2.1.4.min.js
            ├── jquery.validate.min.js
            ├── jquery.vtoy.alert.js
            ├── languages.js
            └── vtoy.js

25 directories, 130 files
```


## 接下來

接下來，要了解[如何將「Ventoy」安裝到「隨身碟」](install)。