---
title: Command
nav_order: 2000
has_children: true
parent: 入門
---


# Command


## 相關文件

* $ info grub -n 'Interface' ## [14 GRUB’s user interface](https://www.gnu.org/software/grub/manual/grub/html_node/Interface.html#Interface)
* $ info grub -n 'Commands' ## [16 The list of available commands](https://www.gnu.org/software/grub/manual/grub/html_node/Commands.html#Commands)
* $ info grub -n 'Shell-like scripting' ## [6.3 Writing full configuration files directly](https://www.gnu.org/software/grub/manual/grub/html_node/Shell_002dlike-scripting.html#Shell_002dlike-scripting)


## 如何進入「指令模式」

在開機後，進到「GRUB」時，一般會進到「選單模式(menu interface)」，

> 若只有一個「開機選項」，則一開始沒有進入「選單模式(menu interface)」，可以按下「Shift」，進入「選單模式(menu interface)」
> 若一開始沒有進入「選單模式(menu interface)」，有可能是已經進入「急救模式(rescue command-line interface)」，此時顯示的「命令提示字元」會是「grub rescue>」。
> 命令提示字元 (Command Prompt) 。

此時可以按下「c」，進到「指令模式(command-line interface)」，此時顯示的「命令提示字元」會是「grub>」。


## 接下來

接著下來，先學習第一個指令「[help](command/help)」。
