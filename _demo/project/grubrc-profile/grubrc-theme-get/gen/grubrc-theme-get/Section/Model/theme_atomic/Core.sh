

################################################################################
### Head: Model theme_atomic
##

mod_theme_atomic_install () {

	##
	## https://www.gnome-look.org/p/1443844
	## https://github.com/lfelipe1501/Atomic-GRUB2-Theme
	## https://github.com/lfelipe1501/Atomic-GRUB2-Theme/tree/master/Atomic
	##

	local name='atomic'
	local repo_url='https://github.com/lfelipe1501/Atomic-GRUB2-Theme.git'


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


	util_error_echo "sudo cp -a $name/Atomic $target_theme_path"
	sudo cp -a "$name/Atomic" "$target_theme_path"

	util_error_echo
	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

	util_error_echo
	util_error_echo "## Please Run to Change:"
	util_error_echo
	util_error_echo "grubrc-theme-ctrl set $name"
	util_error_echo

}

##
### Tail: Model theme_atomic
################################################################################
