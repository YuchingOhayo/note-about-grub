---
title: help
nav_order: 2010
has_children: false
parent: Command
grand_parent: 入門
---


# help

先學習grub第一個指令「[help](https://www.gnu.org/software/grub/manual/grub/html_node/help.html#help)」。


## 操作範例

在「grub>」命令提示字元下，執行下面指令

``` sh
help help
```

顯示

```
Usage: help [PATTERN ...]
Show a help message.

-h, --help       Display this help and exit.
-u, --usage      Display the usage of this command and exit.
```

接下來測試執行，「`help -h`」，「`help --help`」，「`help --usage`」都沒有顯示，直接跳下一個提示字元「grub>」。

接著執行下面指令

``` sh
help
```

就會顯示很多[可用的指令](https://www.gnu.org/software/grub/manual/grub/html_node/Command_002dline-and-menu-entry-commands.html#Command_002dline-and-menu-entry-commands)

假設我們要了解「[probe](https://www.gnu.org/software/grub/manual/grub/html_node/probe.html#probe)」這個指令的用法，以及有那些參數可以下，

我們可以執行

``` sh
help probe
```

就會顯示

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

關於「probe」的詳細用法，請參考[另一篇紀錄](probe)。


## 相關文件

* $ info grub -n 'help' ## [16.3.33 help](https://www.gnu.org/software/grub/manual/grub/html_node/help.html#help)


## 接下來

接下來學習grub指令「[clear](clear)」。
