

################################################################################
### Head: Model mod_grubrc_theme_list
##

mod_grubrc_theme_list () {
	#echo "mod_grubrc_theme_list"
	#echo "$@"

	# grubrc-theme-ctrl list

	local name=''
	local dir_path=''

	if ! [ -d "$THE_GRUBRC_THEMES_DIR_PATH" ]; then
		util_error_echo "## Dir Not Exist: $THE_GRUBRC_THEMES_DIR_PATH"
		return 0
	fi

	cd "$THE_GRUBRC_THEMES_DIR_PATH"

	## for name in *; do
	for name in $(ls ./ -1); do

		dir_path="$THE_GRUBRC_THEMES_DIR_PATH/$name" ## ~/.config/grub/themes/demo

		if is_not_grubrc_theme_dir "$dir_path"; then ## check ~/.config/grub/themes/demo/theme.toml
			continue
		fi

		if [ "is_current" == "is_$name" ]; then ## check ~/.config/grub/themes/demo/theme.toml
			continue
		fi

		echo "$name"
	done

	## $ man cd
	cd "$OLDPWD"

}

##
### Tail: Model mod_grubrc_theme_list
################################################################################
