

## Mount

mount iso

``` sh
sudo mount -o loop KaOS-2022.02-x86_64.iso mnt
```

run

``` sh
tree mnt
```

show

```
mnt
├── EFI
│   ├── boot
│   │   ├── bootx64.efi
│   │   ├── HashTool.efi
│   │   └── loader.efi
│   ├── kiso
│   │   └── kdeosiso.img
│   ├── shellx64_v1.efi
│   └── shellx64_v2.efi
├── isolinux
│   ├── 16x16.fnt
│   ├── about.txt.disabled
│   ├── af.tr
│   ├── ar.tr
│   ├── back640x480.jpg
│   ├── back800x600.jpg
│   ├── bg.tr
│   ├── boot.cat
│   ├── bootlogo
│   ├── ca.hlp
│   ├── ca.tr
│   ├── ca@valencia.tr
│   ├── cd_a.jpg
│   ├── cd.jpg
│   ├── chain.c32
│   ├── cs.tr
│   ├── da.tr
│   ├── de.tr
│   ├── el.tr
│   ├── en.hlp
│   ├── en.tr
│   ├── eo.tr
│   ├── es.tr
│   ├── et.tr
│   ├── fi.tr
│   ├── fr.tr
│   ├── gfxboot.c32
│   ├── gfxboot.cfg
│   ├── gl.tr
│   ├── gu.tr
│   ├── hdt.c32
│   ├── hi.tr
│   ├── hr.tr
│   ├── hu.tr
│   ├── id.tr
│   ├── init
│   ├── isohdpfx.bin
│   ├── isolinux.bin
│   ├── isolinux.cfg
│   ├── isolinux.msg
│   ├── it.tr
│   ├── ja.tr
│   ├── ka.tr
│   ├── ko.tr
│   ├── ky.tr
│   ├── languages
│   ├── ldlinux.c32
│   ├── libcom32.c32
│   ├── libgpl.c32
│   ├── libmenu.c32
│   ├── libutil.c32
│   ├── lt.tr
│   ├── mboot.c32
│   ├── memtest
│   ├── memtest86+-5.01.bin
│   ├── mr.tr
│   ├── nb.tr
│   ├── nl.tr
│   ├── pa.tr
│   ├── pci.ids
│   ├── pl.tr
│   ├── pt_BR.tr
│   ├── pt.tr
│   ├── ro.tr
│   ├── ru.tr
│   ├── sk.tr
│   ├── sl.tr
│   ├── sr@latin.tr
│   ├── sr.tr
│   ├── sv.tr
│   ├── ta.tr
│   ├── text.jpg
│   ├── tg.tr
│   ├── th.tr
│   ├── timer_a.jpg
│   ├── tr.tr
│   ├── uk.tr
│   ├── wa.tr
│   ├── welcome.jpg
│   ├── whichsys.c32
│   ├── xh.tr
│   ├── zh_CN.tr
│   ├── zh_TW.tr
│   └── zu.tr
├── kdeos
│   ├── boot
│   │   └── x86_64
│   │       ├── kdeosiso
│   │       └── kdeosiso.img
│   ├── isomounts
│   └── x86_64
│       ├── overlay-pkgs.sqfs
│       ├── overlay.sqfs
│       └── root-image.sqfs
└── loader
    ├── entries
    │   ├── kaos.conf
    │   ├── kaos-nonfree.conf
    │   ├── uefi-shell-v1-x86_64.conf
    │   └── uefi-shell-v2-x86_64.conf
    └── loader.conf

10 directories, 101 files
```

## grub.cfg


run

``` sh
cat mnt/loader/entries/kaos.conf
```

show

```
title   KaOS UEFI (default) set boot language: 'e', hit 'end', 'lang=es_ES'
linux   /kdeos/boot/x86_64/kdeosiso
initrd  /kdeos/boot/x86_64/kdeosiso.img
options kdeosisobasedir=kdeos kdeosisolabel=KAOS_20220213 xdriver=no nouveau.modeset=1 i915.modeset=1 radeon.modeset=1 nonfree=no
```

run

``` sh
cat mnt/loader/entries/kaos-nonfree.conf
```

show

```
title   KaOS EFI (nonfree Nvidia)
linux   /kdeos/boot/x86_64/kdeosiso
initrd  /kdeos/boot/x86_64/kdeosiso.img
options kdeosisobasedir=kdeos kdeosisolabel=KAOS_20220213 xdriver=no nouveau.modeset=1 i915.modeset=1 radeon.modeset=1 nonfree=yes
```

* https://github.com/KaOSx/live-uefi/blob/master/configs/shared/boot-files/loader/entries/kaos-usb.conf
* https://github.com/KaOSx/live-uefi/blob/master/configs/shared/boot-files/loader/entries/kaos-nonfree-usb.conf


## Link

* https://wiki.archcraft.io/docs/boot-iso/boot-with-usb
* https://maboxlinux.org/users-guide/download-and-installation/
* https://kaosx.us/docs/usb_flash/#using-the-command-line
