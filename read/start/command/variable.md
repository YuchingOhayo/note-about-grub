---
title: variable
nav_order: 2020
has_children: false
parent: Command
grand_parent: 入門
---


# variable


## 相關文件

* $ info grub -n 'Environment' ## [15 GRUB environment variables](https://www.gnu.org/software/grub/manual/grub/html_node/Environment.html#Environment)
* $ info grub -n 'Special environment variables' ## [15.1 Special environment variables](https://www.gnu.org/software/grub/manual/grub/html_node/Special-environment-variables.html#Special-environment-variables)
* $ info grub -n 'set' ## [16.3.67 set](https://www.gnu.org/software/grub/manual/grub/html_node/set.html#set)
* $ info grub -n 'unset' ## [16.3.77 unset](https://www.gnu.org/software/grub/manual/grub/html_node/unset.html#unset)
* $ info grub -n 'echo' ## [16.3.25 echo](https://www.gnu.org/software/grub/manual/grub/html_node/echo.html#echo)
* $ info grub -n 'root' ## [15.1.40 root](https://www.gnu.org/software/grub/manual/grub/html_node/root.html#root)
* $ info grub -n 'prefix' ## [15.1.36 prefix](https://www.gnu.org/software/grub/manual/grub/html_node/prefix.html#prefix)


## 概念說明


### 變數的存取

在「grub>」命令提示字元下，執行下面指令，產生一個變數，並且設定值為「hi」

``` sh
set msg=hi
```

執行下面指令，顯示「變數msg」的值

``` sh
echo $msg
```

或是也可以執行下面指令，顯示「變數msg」的值

``` sh
echo ${msg}
```

會顯示

```
hi
```

若是設定變數的值，該字串有空白，則需要使用「雙引號(")」或是「單引號(')」框起來。

執行下面指令，產生一個變數，並且設定值

``` sh
set msg=hello world
```

執行

``` sh
echo $msg
```

顯示

```
hello
```

執行下面指令，產生一個變數，並且設定值為「hello world」

``` sh
set msg="hello world"
```

或是執行下面指令

``` sh
set msg='hello world'
```

執行

``` sh
echo $msg
```

顯示

```
hello world
```

執行下面指令，將「msg」這個變數移除

``` sh
unset msg
```

接著執行

``` sh
echo $msg
```

就會顯示一個空白行，並且顯示下一個命令提示字元「grub>」


### 環境變數

在「GRUB」有一些預定好的「環境變數」，

請參考「[15.1 Special environment variables](https://www.gnu.org/software/grub/manual/grub/html_node/Special-environment-variables.html#Special-environment-variables)」，

先提兩個比較常見重要的「[root](https://www.gnu.org/software/grub/manual/grub/html_node/root.html#root)」和「[prefix](https://www.gnu.org/software/grub/manual/grub/html_node/prefix.html#prefix)」。


在「grub>」命令提示字元下，執行下面指令，產生一個變數，並且設定值為「hi」

``` sh
echo $root
```

類似顯示如下

```
hd0,msdos1
```


``` sh
echo $prefix
```

類似顯示如下

```
(hd0,msdos1)/boot/grub
```
