---
title: probe
nav_order: 2050
has_children: false
parent: Command
grand_parent: 入門
---


# probe

學習grub指令「[probe](https://www.gnu.org/software/grub/manual/grub/html_node/probe.html#probe)」。


## 操作範例

在「grub>」命令提示字元下，執行下面指令

``` sh
help probe
```

顯示

```
Usage: probe DEVICE
Retrieve device info.

-s, --set=VARNAME            Set a variable to return value.
-d, --driver                 Determine driver.
-p, --partmap                Determine partition map type.
-f, --fs                     Determine filesystem type.
-u, --fs-uuid                Determine filesystem UUID.
-l, --label                  Determine partition label.
    --part--uuid             Determine partition UUID.
-h, --help                   Display this help and exit.
    --usage                  Display this usage of this command and exit.
```

接著測試執行「`probe -h`」,「`probe --help`」，皆會顯示上面的訊息。

若是執行「`probe --usage`」，則會顯示如下的訊息

```
Usage: probe DEVICE
```

假設我們要偵測的「[Device](https://www.gnu.org/software/grub/manual/grub/html_node/Device-syntax.html#Device-syntax)」是「(hd0,msdos2)」

執行下面指令

``` sh
probe -u (hd0,msdos2)
```

或是執行下面指令

``` sh
probe --fs-uuid (hd0,msdos2)
```

就會顯示該「Device」的「UUID」，類似如下

```
1be9c668-05ea-48fd-a1f6-4692a9c01d2d
```

> 就類似在「bash」底下，執行「[blkid](http://manpages.ubuntu.com/manpages/jammy/en/man8/blkid.8.html)」，可以找到該「Device」的「UUID」。

而「probe」，也可以將「找到的值」，存到一個「變數」，

舉例：

在「grub>」命令提示字元下，執行下面指令

``` sh
probe --set=partition_uuid --fs-uuid (hd0,msdos2)
```

接著會顯示下一個「grub>」命令提示字元，


接著執行下面的指令

``` sh
echo $partition_uuid
```

就會顯示

```
1be9c668-05ea-48fd-a1f6-4692a9c01d2d
```

## 相關文件

* $ info grub -n 'probe' ## [16.3.58 probe](https://www.gnu.org/software/grub/manual/grub/html_node/probe.html#probe)
* $ info grub -n 'Device syntax' ## [13.2 How to specify files](https://www.gnu.org/software/grub/manual/grub/html_node/File-name-syntax.html#File-name-syntax)
