

menuentry "<?php echo $data['iso.title']; ?>" --class Arco {
	set use_driver="free"
	set iso_file="<?php echo $data['iso.path']; ?>"
	search --no-floppy -f --set=iso_partition $iso_file
	probe -u $iso_partition --set=iso_partition_uuid
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file
	set boot_option=""
	#set boot_option="quiet splash"
	linux (loop)/arch/boot/x86_64/vmlinuz-linux img_dev=$img_dev img_loop=$iso_file driver=$use_driver $boot_option
	initrd (loop)/arch/boot/intel-ucode.img (loop)/arch/boot/amd-ucode.img (loop)/arch/boot/x86_64/initramfs-linux.img
}
