

################################################################################
### Head: Model grubrc_theme_install
##

mod_grubrc_theme_install () {

	## $ grubrc-theme-ctrl install dracula https://github.com/zshzero/dracula-grub2.git

	local name="$1"
	local repo_url="$2"

	local target_theme_path="$THE_GRUBRC_THEMES_DIR_PATH/$name"

	if [ -d "$target_theme_path" ]; then
		util_error_echo "## Theme is Exist: $target_theme_path"
		return 1
	fi


	local now="$(date +%Y%m%d_%s)"
	local temp_dir_path="/tmp/grub.bak.${now}"

	util_error_echo "sudo mkdir -p $THE_GRUBRC_THEMES_DIR_PATH"
	sudo mkdir -p "$THE_GRUBRC_THEMES_DIR_PATH"

	util_error_echo "mkdir -p $temp_dir_path"
	mkdir -p "$temp_dir_path"

	util_error_echo "cd $temp_dir_path"
	cd "$temp_dir_path"

	util_error_echo "git clone --recursive $repo_url $name"
	git clone --recursive "$repo_url" "$name" ## git clone --recursive https://github.com/zshzero/dracula-grub2.git dracula

	util_error_echo "sudo cp -a $name $target_theme_path"
	sudo cp -a "$name" "$target_theme_path"

	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Model grubrc_theme_install
################################################################################
