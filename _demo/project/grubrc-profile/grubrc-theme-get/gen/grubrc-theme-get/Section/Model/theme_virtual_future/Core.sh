

################################################################################
### Head: Model theme_virtual_future
##

mod_theme_virtual_future_install () {

	##
	## https://www.gnome-look.org/p/1529571/
	## https://gitlab.com/deck451/virtual_future_grub_theme
	## https://gitlab.com/deck451/virtual_future_grub_theme/-/tree/main/virtual_future
	##

	local name='virtual_future'
	local repo_url='https://gitlab.com/deck451/virtual_future_grub_theme.git'


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
	grubrc_theme_repo_clone_to_tmp "$name" "$repo_url"
	util_error_echo


	util_error_echo "sudo cp -a $name/virtual_future $target_theme_path"
	sudo cp -a "$name/virtual_future" "$target_theme_path"

	util_error_echo
	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"


}

##
### Tail: Model theme_virtual_future
################################################################################
