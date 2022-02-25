---
title: 自訂 Gurb Menu Entry
nav_order: 1040
has_children: false
parent: 入門
---


# 自訂 Gurb Menu Entry

延續[之前](https://samwhelp.github.io/note-about-grub/read/start/grub_cfg.html)提到的，

透過「sudo update-grub」，會產生新的「/boot/grub/grub.cfg」，

而過程中，會偵測硬碟裡既有的系統，

進而產生相對應的「Grub開機選項(Grub Menu Entry)」，

這些都紀錄在「/boot/grub/grub.cfg」。

另外「Grub」也提供一個機制，讓您可以自訂自己的「Grub開機選項(Grub Menu Entry)」，

有提供兩種方式來修改，

* 一種是修改「/etc/grub.d/40_custom」這個檔案，修改後「**需要**」執行「`sudo update-grub`」
* 一種是修改「/boot/grub/custom.cfg」這個檔案，修改後「**不需要**」執行「sudo update-grub」。


## 使用案例

* [GRUB Boot ISO 範例](https://samwhelp.github.io/note-about-grub/read/howto/boot_iso.html)


## 相關文件

* $ info grub -n '[Simple configuration](https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html#Simple-configuration)'
