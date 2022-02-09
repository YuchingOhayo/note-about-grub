

################################################################################
### Head: Model theme_pentract
##

mod_theme_pentract_install () {

	##
	## https://www.gnome-look.org/p/1661288
	## https://github.com/sarancodes/pentract-grub-theme
	## https://github.com/sarancodes/pentract-grub-theme/tree/main/pentract
	##

	local name='pentract'
	local repo_url='https://github.com/sarancodes/pentract-grub-theme.git'


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


	util_error_echo "sudo cp -a $name/pentract $target_theme_path"
	sudo cp -a "$name/pentract" "$target_theme_path"

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
### Tail: Model theme_pentract
################################################################################
