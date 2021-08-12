

################################################################################
### Head: Model mod_grubrc_theme_remove
##

mod_grubrc_theme_remove () {

	## $ grubrc-theme-ctrl remove poly_dark

	local name="$1"
	#echo $name

	if [ "none$name" = 'none' ]; then
		util_error_echo
		util_error_echo "## Empty Theme Name:"
		util_error_echo
		util_error_echo "## Example:"
		util_error_echo
		util_error_echo "grubrc-theme-ctrl remove theme_name"
		return 1
	fi

	util_error_echo "cd $THE_GRUBRC_THEMES_DIR_PATH"
	cd "$THE_GRUBRC_THEMES_DIR_PATH" ## cd /boot/grub/themes

	local dir_path="./$name"

	if ! [ -d "$dir_path" ]; then ## check /boot/grub/themes/dracula
		util_error_echo "## Dir not exists: $name"
		return 1
	fi


	util_error_echo "sudo rm -rf $dir_path"
	sudo rm -rf "$dir_path"

	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Model mod_grubrc_theme_remove
################################################################################
