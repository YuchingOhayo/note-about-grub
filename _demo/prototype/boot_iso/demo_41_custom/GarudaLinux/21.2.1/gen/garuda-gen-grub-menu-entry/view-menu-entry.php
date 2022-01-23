

menuentry "<?php echo $data['iso.title']; ?>" --class Garuda {
	set use_driver="free"
	set iso_file="<?php echo $data['iso.path']; ?>"
	search --no-floppy -f --set=iso_partition $iso_file
	probe -u $iso_partition --set=iso_partition_uuid
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file
	set boot_option=""
	#set boot_option="quiet splash"
	linux (loop)/boot/vmlinuz-x86_64 img_dev=$img_dev img_loop=$iso_file driver=$use_driver $boot_option
	initrd (loop)/boot/intel_ucode.img (loop)/boot/amd_ucode.img (loop)/boot/initramfs-x86_64.img
}
