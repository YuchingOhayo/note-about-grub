

################################################################################
### Head: Model mod_grubrc_theme_path_preview
##

mod_grubrc_theme_path_preview () {
	#echo "mod_grubrc_theme_path_preview"
	#echo "$@"


	## $ grubrc-theme-ctrl path_preview /boot/grub/themes/dracula/theme.txt


	local target_file_path="$1"
	local theme_txt_path="$(realpath -s "$target_file_path")"

	if ! [ -f "$theme_txt_path" ] ; then ## check /boot/grub/themes/dracula/theme.txt
		util_error_echo
		util_error_echo "## Grub Theme Txt Not Exist: $theme_txt_path"
		util_error_echo
		util_error_echo '## Please Run:'
		util_error_echo '	$ grubrc-theme-ctrl path_list'
		util_error_echo '## to find valid grub theme txt.'
		util_error_echo
		return 1
	fi


	util_error_echo
	sys_grub_theme_preview "$theme_txt_path"

}


##
### Tail: Model mod_grubrc_theme_path_preview
################################################################################
