

## Mount

mount iso

``` sh
sudo mount -o loop void-live-x86_64-20210930.iso mnt
```

run

``` sh
tree mnt
```

show

```
mnt
├── boot
│   ├── grub
│   │   ├── efiboot.img
│   │   ├── fonts
│   │   │   └── unicode.pf2
│   │   ├── grub.cfg
│   │   └── grub_void.cfg
│   ├── initrd
│   ├── isolinux
│   │   ├── boot.cat
│   │   ├── chain.c32
│   │   ├── isolinux.bin
│   │   ├── isolinux.cfg
│   │   ├── ldlinux.c32
│   │   ├── libcom32.c32
│   │   ├── libutil.c32
│   │   ├── splash.png
│   │   └── vesamenu.c32
│   └── vmlinuz
└── LiveOS
    └── squashfs.img

5 directories, 16 files
```

## grub.cfg


run

``` sh
cat mnt/boot/grub/grub.cfg
```

show

```
insmod usbms
insmod usb_keyboard
insmod part_gpt
insmod part_msdos
insmod fat
insmod iso9660
insmod udf
insmod ext2
insmod reiserfs
insmod ntfs
insmod hfsplus
insmod linux
insmod chain
search --file --no-floppy --set=voidlive "/boot/grub/grub_void.cfg"
source "(${voidlive})/boot/grub/grub_void.cfg"
```


run

``` sh
cat mnt/boot/grub/grub_void.cfg
```

show

```

set pager="1"
set locale_dir="(${voidlive})/boot/grub/locale"

if [ -e "${prefix}/${grub_cpu}-${grub_platform}/all_video.mod" ]; then
    insmod all_video
else
    insmod efi_gop
    insmod efi_uga
    insmod video_bochs
    insmod video_cirrus
fi

insmod font

if loadfont "(${voidlive})/boot/grub/fonts/unicode.pf2" ; then
    insmod gfxterm
    set gfxmode="auto"

    terminal_input console
    terminal_output gfxterm

    insmod png
    background_image "(${voidlive})/boot/isolinux/splash.png"
fi

if [ cpuid -l ]; then
    menuentry "Void Linux 5.13.19_1 (x86_64)" {
        set gfxpayload="keep"
        linux (${voidlive})/boot/vmlinuz \
		root=live:CDLABEL=VOID_LIVE ro init=/sbin/init \
		rd.luks=0 rd.md=0 rd.dm=0 loglevel=4 gpt add_efi_memmap \
		vconsole.unicode=1 vconsole.keymap=us \
		locale.LANG=en_US.UTF-8  rd.live.overlay.overlayfs=1
        initrd (${voidlive})/boot/initrd
    }
    menuentry "Void Linux 5.13.19_1 (x86_64) (RAM)" {
        set gfxpayload="keep"
        linux (${voidlive})/boot/vmlinuz \
		root=live:CDLABEL=VOID_LIVE ro init=/sbin/init \
		rd.luks=0 rd.md=0 rd.dm=0 loglevel=4 gpt add_efi_memmap \
		vconsole.unicode=1 vconsole.keymap=us \
		locale.LANG=en_US.UTF-8  rd.live.overlay.overlayfs=1  rd.live.ram
        initrd (${voidlive})/boot/initrd
    }
fi
```

## Link

* [https://github.com/void-linux/void-mklive](https://github.com/void-linux/void-mklive)
* [https://github.com/void-linux/void-mklive/blob/master/grub/grub.cfg](https://github.com/void-linux/void-mklive/blob/master/grub/grub.cfg)
* [https://github.com/void-linux/void-mklive/blob/master/grub/grub_void.cfg.in](https://github.com/void-linux/void-mklive/blob/master/grub/grub_void.cfg.in)
