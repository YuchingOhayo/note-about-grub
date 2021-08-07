

################################################################################
### Head: Model theme_main
##

mod_theme_main_install () {

	##
	## * https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	## * https://github.com/linuxdeepin/deepin-grub2-themes
	## * https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=353942
	## * http://packages.deepin.com/deepin/pool/main/g/grub-themes-deepin/
	## * http://packages.deepin.com/deepin/pool/universe/g/grub-themes-deepin/
	## * http://ftp.ubuntu-tw.org/mirror/deepin/pool/main/g/grub-themes-deepin/
	## * http://ftp.ubuntu-tw.org/mirror/deepin/pool/universe/g/grub-themes-deepin/
	##
	## ```
	## http://ftp.ubuntu-tw.org/mirror/deepin/pool/main/g/grub-themes-deepin/grub-themes-deepin_1.0.0-1.debian.tar.xz
	## http://ftp.ubuntu-tw.org/mirror/deepin/pool/main/g/grub-themes-deepin/grub-themes-deepin_1.0.0-1.dsc
	## http://ftp.ubuntu-tw.org/mirror/deepin/pool/main/g/grub-themes-deepin/grub-themes-deepin_1.0.0-1_all.deb
	## http://ftp.ubuntu-tw.org/mirror/deepin/pool/main/g/grub-themes-deepin/grub-themes-deepin_1.0.0.orig.tar.xz
	## ```
	##

	local name='main'
	local deb_url='http://ftp.ubuntu-tw.org/mirror/deepin/pool/main/g/grub-themes-deepin/grub-themes-deepin_1.0.0-1_all.deb'

	if [ "none$name" = "none" ]; then
		util_error_echo
		util_error_echo "## Need name: "
		util_error_echo
		return 1
	fi


	local target_theme_path="$THE_GRUBRC_THEMES_DIR_PATH/$name"

	if [ -d "$target_theme_path" ]; then
		util_error_echo "## Theme is Exist: $target_theme_path"
		util_error_echo "## Please Remove First:"
		util_error_echo "grubrc-theme-ctrl remove $name"
		return 1
	fi

	util_error_echo "sudo mkdir -p $THE_GRUBRC_THEMES_DIR_PATH"
	sudo mkdir -p "$THE_GRUBRC_THEMES_DIR_PATH"


	util_error_echo
	grubrc_theme_deb_extrct_to_tmp "$name" "$deb_url"
	util_error_echo


	util_error_echo
	ls -l
	util_error_echo


	util_error_echo "sudo cp -a $name/boot/grub/themes/deepin $target_theme_path"
	sudo cp -a "$name/boot/grub/themes/deepin" "$target_theme_path"


	mod_theme_main_install_change_background


	util_error_echo
	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"




}

mod_theme_main_install_change_background () {

	util_error_echo
	util_error_echo "## Change Background"
	util_error_echo

	util_error_echo "sudo cp /boot/grub/themes/main/background.png /boot/grub/themes/main/background.ori.png"
	sudo cp '/boot/grub/themes/main/background.png' '/boot/grub/themes/main/background.ori.png'


	mod_theme_main_install_pickup_background

	if ! [ -f 'background.png' ]; then
		return
	fi

	util_error_echo "sudo cp background.png /boot/grub/themes/main/background.png"
	sudo cp 'background.png' '/boot/grub/themes/main/background.png'

}

mod_theme_main_install_pickup_background () {

	if [ -f "$HOME/Pictures/Wallpaper/background-grub.jpg" ]; then

		# https://imagemagick.org/script/convert.php
		util_error_echo "magick convert $HOME/Pictures/Wallpaper/background-grub.jpg background.png"
		magick convert "$HOME/Pictures/Wallpaper/background-grub.jpg" 'background.png'

		return
	fi

	if [ -f '/usr/share/backgrounds/wallpapers-2018/palm-wave.jpg' ]; then

		# https://imagemagick.org/script/convert.php
		util_error_echo "magick convert /usr/share/backgrounds/wallpapers-2018/palm-wave.jpg background.png"
		magick convert '/usr/share/backgrounds/wallpapers-2018/palm-wave.jpg' 'background.png'

		return
	fi


}


##
### Tail: Model theme_main
################################################################################
