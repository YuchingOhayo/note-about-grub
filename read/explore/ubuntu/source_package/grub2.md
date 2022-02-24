---
title: grub2
nav_order: 6011
has_children: false
parent: Source Package
grand_parent: Ubuntu
---

# grub

## Source Package

* [grub2](https://packages.ubuntu.com/source/focal/grub2)

## 關於「Source Package: grub2」

執行

```
apt-cache show grub2
```

顯示

```
Package: grub2
Format: 3.0 (quilt)
Binary: grub2, grub-linuxbios, grub-efi, grub-common, grub2-common, grub-emu, grub-emu-dbg, grub-pc-bin, grub-pc-dbg, grub-pc, grub-rescue-pc, grub-coreboot-bin, grub-coreboot-dbg, grub-coreboot, grub-efi-ia32-bin, grub-efi-ia32-dbg, grub-efi-ia32, grub-efi-ia32-signed-template, grub-efi-amd64-bin, grub-efi-amd64-dbg, grub-efi-amd64, grub-efi-amd64-signed-template, grub-efi-ia64-bin, grub-efi-ia64-dbg, grub-efi-ia64, grub-efi-arm-bin, grub-efi-arm-dbg, grub-efi-arm, grub-efi-arm64-bin, grub-efi-arm64-dbg, grub-efi-arm64, grub-efi-arm64-signed-template, grub-ieee1275-bin, grub-ieee1275-dbg, grub-ieee1275, grub-firmware-qemu, grub-uboot-bin, grub-uboot-dbg, grub-uboot, grub-xen-bin, grub-xen-dbg, grub-xen, grub-xen-host, grub-yeeloong-bin, grub-yeeloong-dbg, grub-yeeloong, grub-theme-starfield, grub-mount-udeb
Architecture: any
Version: 2.04-1ubuntu26
Priority: optional
Section: admin
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: GRUB Maintainers <pkg-grub-devel@alioth-lists.debian.net>
Uploaders: Felix Zielcke <fzielcke@z-51.de>, Jordi Mallach <jordi@debian.org>, Colin Watson <cjwatson@debian.org>, Ian Campbell <ijc@debian.org>, Steve McIntyre <93sam@debian.org>
Standards-Version: 3.9.6
Build-Depends: debhelper (>= 10~), patchutils, dh-autoreconf, dh-systemd, automake, python3, flex, bison, po-debconf, help2man, texinfo, gcc-8, gcc-8-multilib [i386 kopensolaris-i386 any-amd64 any-ppc64 any-sparc], xfonts-unifont, libfreetype6-dev, gettext, libdevmapper-dev [linux-any], libgeom-dev (>= 8.2+ds1-1~) [kfreebsd-any] | libgeom-dev (<< 8.2) [kfreebsd-any], libsdl1.2-dev [!hurd-any], xorriso, qemu-system [i386 kfreebsd-i386 kopensolaris-i386 any-amd64], cpio [i386 kopensolaris-i386 amd64 x32], parted [!hurd-any], libfuse-dev (>= 2.8.4-1.4) [linux-any kfreebsd-any], ttf-dejavu-core, liblzma-dev, dosfstools [any-i386 any-amd64 any-arm64], mtools [any-i386 any-amd64 any-arm64], wamerican, libparted-dev [any-powerpc any-ppc64 any-ppc64el], pkg-config, bash-completion, libefiboot-dev [any-linux-i386 any-linux-amd64 any-linux-ia64 any-linux-arm any-linux-arm64], libefivar-dev [any-linux-i386 any-linux-amd64 any-linux-ia64 any-linux-arm any-linux-arm64]
Build-Conflicts: autoconf2.13, libnvpair-dev, libzfs-dev
Homepage: https://www.gnu.org/software/grub/
Vcs-Browser: https://git.launchpad.net/~ubuntu-core-dev/grub/+git/ubuntu
Vcs-Git: https://git.launchpad.net/~ubuntu-core-dev/grub/+git/ubuntu
Directory: pool/main/g/grub2
Package-List:
 grub-common deb admin optional arch=any
 grub-coreboot deb admin optional arch=any-i386,any-amd64
 grub-coreboot-bin deb admin optional arch=any-i386,any-amd64
 grub-coreboot-dbg deb debug optional arch=any-i386,any-amd64
 grub-efi deb oldlibs optional arch=any-i386,any-amd64
 grub-efi-amd64 deb admin optional arch=i386,kopensolaris-i386,any-amd64
 grub-efi-amd64-bin deb admin optional arch=i386,kopensolaris-i386,any-amd64
 grub-efi-amd64-dbg deb debug optional arch=i386,kopensolaris-i386,any-amd64
 grub-efi-amd64-signed-template deb admin optional arch=amd64
 grub-efi-arm deb admin optional arch=any-arm
 grub-efi-arm-bin deb admin optional arch=any-arm
 grub-efi-arm-dbg deb debug optional arch=any-arm
 grub-efi-arm64 deb admin optional arch=any-arm64
 grub-efi-arm64-bin deb admin optional arch=any-arm64
 grub-efi-arm64-dbg deb debug optional arch=any-arm64
 grub-efi-arm64-signed-template deb admin optional arch=arm64
 grub-efi-ia32 deb admin optional arch=any-i386,any-amd64
 grub-efi-ia32-bin deb admin optional arch=any-i386,any-amd64
 grub-efi-ia32-dbg deb debug optional arch=any-i386,any-amd64
 grub-efi-ia32-signed-template deb admin optional arch=i386
 grub-efi-ia64 deb admin optional arch=any-ia64
 grub-efi-ia64-bin deb admin optional arch=any-ia64
 grub-efi-ia64-dbg deb debug optional arch=any-ia64
 grub-emu deb admin optional arch=any-i386,any-amd64,any-powerpc
 grub-emu-dbg deb debug optional arch=any-i386,any-amd64,any-powerpc
 grub-firmware-qemu deb admin optional arch=any-i386,any-amd64
 grub-ieee1275 deb admin optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64
 grub-ieee1275-bin deb admin optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64
 grub-ieee1275-dbg deb debug optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64
 grub-linuxbios deb oldlibs optional arch=any-i386,any-amd64
 grub-mount-udeb udeb debian-installer optional arch=linux-any,kfreebsd-any
 grub-pc deb admin optional arch=any-i386,any-amd64
 grub-pc-bin deb admin optional arch=any-i386,any-amd64
 grub-pc-dbg deb debug optional arch=any-i386,any-amd64
 grub-rescue-pc deb admin optional arch=any-i386,any-amd64
 grub-theme-starfield deb admin optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64,any-mipsel,any-ia64,any-arm,any-arm64
 grub-uboot deb admin optional arch=any-arm
 grub-uboot-bin deb admin optional arch=any-arm
 grub-uboot-dbg deb debug optional arch=any-arm
 grub-xen deb admin optional arch=i386,amd64
 grub-xen-bin deb admin optional arch=i386,amd64
 grub-xen-dbg deb debug optional arch=i386,amd64
 grub-xen-host deb admin optional arch=i386,amd64
 grub-yeeloong deb admin optional arch=any-mipsel
 grub-yeeloong-bin deb admin optional arch=any-mipsel
 grub-yeeloong-dbg deb debug optional arch=any-mipsel
 grub2 deb oldlibs optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64
 grub2-common deb admin optional arch=any-i386,any-amd64,any-powerpc,any-ppc64,any-ppc64el,any-sparc,any-sparc64,any-mipsel,any-ia64,any-arm,any-arm64
Files:
 563069105fdaf089a4cdb9c7d3721d39 7081 grub2_2.04-1ubuntu26.dsc
 5aaca6713b47ca2456d8324a58755ac7 6393864 grub2_2.04.orig.tar.xz
 d8e53575935f7c7b82e139dc3da15aa6 1101636 grub2_2.04-1ubuntu26.debian.tar.xz
Checksums-Sha1:
 be97dd84f737a1a79cb7d50be8e6e9fcfb380423 7081 grub2_2.04-1ubuntu26.dsc
 3ed21de7be5970d7638b9f526bca3292af78e0fc 6393864 grub2_2.04.orig.tar.xz
 2e170f8fd10f5561bc10a8c4bdb9c7ae4c050c35 1101636 grub2_2.04-1ubuntu26.debian.tar.xz
Checksums-Sha256:
 2a67da02c851f70cfe5a6d074eace958fb606987cd206b88e02958442732acbe 7081 grub2_2.04-1ubuntu26.dsc
 e5292496995ad42dabe843a0192cf2a2c502e7ffcc7479398232b10a472df77d 6393864 grub2_2.04.orig.tar.xz
 9bdda4a8a4bf19c151c267055f045eb573bd183bd6527dc2042517c3db06daa6 1101636 grub2_2.04-1ubuntu26.debian.tar.xz
```

執行

``` sh
apt-cache showsrc grub2 | grep '^Binary:'
```

顯示

```
Binary: grub2, grub-linuxbios, grub-efi, grub-common, grub2-common, grub-emu, grub-emu-dbg, grub-pc-bin, grub-pc-dbg, grub-pc, grub-rescue-pc, grub-coreboot-bin, grub-coreboot-dbg, grub-coreboot, grub-efi-ia32-bin, grub-efi-ia32-dbg, grub-efi-ia32, grub-efi-ia32-signed-template, grub-efi-amd64-bin, grub-efi-amd64-dbg, grub-efi-amd64, grub-efi-amd64-signed-template, grub-efi-ia64-bin, grub-efi-ia64-dbg, grub-efi-ia64, grub-efi-arm-bin, grub-efi-arm-dbg, grub-efi-arm, grub-efi-arm64-bin, grub-efi-arm64-dbg, grub-efi-arm64, grub-efi-arm64-signed-template, grub-ieee1275-bin, grub-ieee1275-dbg, grub-ieee1275, grub-firmware-qemu, grub-uboot-bin, grub-uboot-dbg, grub-uboot, grub-xen-bin, grub-xen-dbg, grub-xen, grub-xen-host, grub-yeeloong-bin, grub-yeeloong-dbg, grub-yeeloong, grub-theme-starfield, grub-mount-udeb
```

執行

``` sh
apt-cache showsrc grub2 | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u
```

顯示

```
grub2
grub2-common
grub-common
grub-coreboot
grub-coreboot-bin
grub-coreboot-dbg
grub-efi
grub-efi-amd64
grub-efi-amd64-bin
grub-efi-amd64-dbg
grub-efi-amd64-signed-template
grub-efi-arm
grub-efi-arm64
grub-efi-arm64-bin
grub-efi-arm64-dbg
grub-efi-arm64-signed-template
grub-efi-arm-bin
grub-efi-arm-dbg
grub-efi-ia32
grub-efi-ia32-bin
grub-efi-ia32-dbg
grub-efi-ia32-signed-template
grub-efi-ia64
grub-efi-ia64-bin
grub-efi-ia64-dbg
grub-emu
grub-emu-dbg
grub-firmware-qemu
grub-ieee1275
grub-ieee1275-bin
grub-ieee1275-dbg
grub-linuxbios
grub-mount-udeb
grub-pc
grub-pc-bin
grub-pc-dbg
grub-rescue-pc
grub-theme-starfield
grub-uboot
grub-uboot-bin
grub-uboot-dbg
grub-xen
grub-xen-bin
grub-xen-dbg
grub-xen-host
grub-yeeloong
grub-yeeloong-bin
grub-yeeloong-dbg
```



## 使用 dctrl-tools 探索

先安裝「[dctrl-tools](https://packages.ubuntu.com/focal/dctrl-tools)」。

``` sh
sudo apt-get install dctrl-tools
```

接著執行

``` sh
grep-aptavail -F Source 'grub2'
```

或是執行下面指令，只有顯示某些欄位

``` sh
grep-aptavail -F Source 'grub2' -s Package,Version,Source,Maintainer
```

顯示

```
Package: grub-common
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-amd64
Version: 2.04-1ubuntu44.2
Source: grub2-unsigned
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-amd64-bin
Version: 2.04-1ubuntu44.2
Source: grub2-unsigned
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-amd64-dbg
Version: 2.04-1ubuntu44.2
Source: grub2-unsigned
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-amd64-signed
Version: 1.167.2+2.04-1ubuntu44.2
Source: grub2-signed (1.167.2)
Maintainer: Colin Watson <cjwatson@ubuntu.com>

Package: grub-efi-ia32
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-ia32-bin
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-ia32-dbg
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-ieee1275
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-ieee1275-bin
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-ieee1275-dbg
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-pc
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-pc-bin
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-pc-dbg
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-xen
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-xen-bin
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-xen-dbg
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub2-common
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-amd64
Version: 2.04-1ubuntu44
Source: grub2-unsigned
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-amd64-bin
Version: 2.04-1ubuntu44
Source: grub2-unsigned
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-amd64-dbg
Version: 2.04-1ubuntu44
Source: grub2-unsigned
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-coreboot
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-coreboot-bin
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-coreboot-dbg
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-efi-amd64-signed-template
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-emu
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-emu-dbg
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-firmware-qemu
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-linuxbios
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-rescue-pc
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-theme-starfield
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>

Package: grub-xen-host
Version: 2.04-1ubuntu26.13
Source: grub2
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
```

執行

``` sh
grep-aptavail -F Source 'grub2' -s Package | awk -F ': ' '{print $2}' | sort -u
```

顯示

```
grub2-common
grub-common
grub-coreboot
grub-coreboot-bin
grub-coreboot-dbg
grub-efi
grub-efi-amd64
grub-efi-amd64-bin
grub-efi-amd64-dbg
grub-efi-amd64-signed
grub-efi-amd64-signed-template
grub-efi-ia32
grub-efi-ia32-bin
grub-efi-ia32-dbg
grub-emu
grub-emu-dbg
grub-firmware-qemu
grub-ieee1275
grub-ieee1275-bin
grub-ieee1275-dbg
grub-linuxbios
grub-pc
grub-pc-bin
grub-pc-dbg
grub-rescue-pc
grub-theme-starfield
grub-xen
grub-xen-bin
grub-xen-dbg
grub-xen-host
```

執行

``` sh
grep-aptavail -F Source 'grub2' -s Package | awk -F ': ' '{print $2}' | sort -u | awk '{print "* ["$1"](https://packages.ubuntu.com/focal/"$1")"}'
```


* [grub2-common](https://packages.ubuntu.com/focal/grub2-common)
* [grub-common](https://packages.ubuntu.com/focal/grub-common)
* [grub-coreboot](https://packages.ubuntu.com/focal/grub-coreboot)
* [grub-coreboot-bin](https://packages.ubuntu.com/focal/grub-coreboot-bin)
* [grub-coreboot-dbg](https://packages.ubuntu.com/focal/grub-coreboot-dbg)
* [grub-efi](https://packages.ubuntu.com/focal/grub-efi)
* [grub-efi-amd64](https://packages.ubuntu.com/focal/grub-efi-amd64)
* [grub-efi-amd64-bin](https://packages.ubuntu.com/focal/grub-efi-amd64-bin)
* [grub-efi-amd64-dbg](https://packages.ubuntu.com/focal/grub-efi-amd64-dbg)
* [grub-efi-amd64-signed](https://packages.ubuntu.com/focal/grub-efi-amd64-signed)
* [grub-efi-amd64-signed-template](https://packages.ubuntu.com/focal/grub-efi-amd64-signed-template)
* [grub-efi-ia32](https://packages.ubuntu.com/focal/grub-efi-ia32)
* [grub-efi-ia32-bin](https://packages.ubuntu.com/focal/grub-efi-ia32-bin)
* [grub-efi-ia32-dbg](https://packages.ubuntu.com/focal/grub-efi-ia32-dbg)
* [grub-emu](https://packages.ubuntu.com/focal/grub-emu)
* [grub-emu-dbg](https://packages.ubuntu.com/focal/grub-emu-dbg)
* [grub-firmware-qemu](https://packages.ubuntu.com/focal/grub-firmware-qemu)
* [grub-ieee1275](https://packages.ubuntu.com/focal/grub-ieee1275)
* [grub-ieee1275-bin](https://packages.ubuntu.com/focal/grub-ieee1275-bin)
* [grub-ieee1275-dbg](https://packages.ubuntu.com/focal/grub-ieee1275-dbg)
* [grub-linuxbios](https://packages.ubuntu.com/focal/grub-linuxbios)
* [grub-pc](https://packages.ubuntu.com/focal/grub-pc)
* [grub-pc-bin](https://packages.ubuntu.com/focal/grub-pc-bin)
* [grub-pc-dbg](https://packages.ubuntu.com/focal/grub-pc-dbg)
* [grub-rescue-pc](https://packages.ubuntu.com/focal/grub-rescue-pc)
* [grub-theme-starfield](https://packages.ubuntu.com/focal/grub-theme-starfield)
* [grub-xen](https://packages.ubuntu.com/focal/grub-xen)
* [grub-xen-bin](https://packages.ubuntu.com/focal/grub-xen-bin)
* [grub-xen-dbg](https://packages.ubuntu.com/focal/grub-xen-dbg)
* [grub-xen-host](https://packages.ubuntu.com/focal/grub-xen-host)



## Link

* [[索引] 在 泛Ubuntu 底下，「套件」的操作實務](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333562#forumpost333562)
