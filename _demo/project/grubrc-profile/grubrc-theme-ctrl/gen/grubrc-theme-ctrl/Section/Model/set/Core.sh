

################################################################################
### Head: Model mod_grubrc_theme_set
##

mod_grubrc_theme_set () {
	#echo "mod_grubrc_theme_set"
	#echo "$@"


	## $ grubrc-theme-ctrl set demo

	local name="$1"
	local source_dir_path="$THE_GRUBRC_THEMES_DIR_PATH/$name"

	if is_not_grubrc_theme_dir "$source_dir_path"; then ## check /boot/grub/themes/demo
		util_error_echo
		util_error_echo "## Not Valid Grub Theme Dir: $source_dir_path"
		util_error_echo
		util_error_echo '## Please Run:'
		util_error_echo '	$ grubrc-theme-ctrl list'
		util_error_echo '## to find valid grubrc_theme dir.'
		util_error_echo
		return 1
	fi


	util_error_echo
	sys_grub_theme_set "$source_dir_path/theme.txt"

}


##
### Tail: Model mod_grubrc_theme_set
################################################################################
