

################################################################################
### Head: Sys
##

is_grubrc_theme_dir () {
	local dir_path="$1"
	local grubrc_theme_file_path="$dir_path/$THE_GRUBRC_THEME_CONFIG_FILE_NAME" ## /boot/grub/themes/demo/theme.txt

	if ! [ -f "$grubrc_theme_file_path" ]; then ## check /boot/grub/themes/demo/theme.txt
		return 1
	fi

	return 0
}

is_not_grubrc_theme_dir () {
	local dir_path="$1"
	local grubrc_theme_file_path="$dir_path/$THE_GRUBRC_THEME_CONFIG_FILE_NAME" ## /boot/grub/themes/demo/theme.txt

	if [ -f "$grubrc_theme_file_path" ]; then ## check /boot/grub/themes/demo/theme.txt
		return 1
	fi

	return 0
}

grubrc_theme_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_GRUBRC_THEMES_DIR_PATH/$name"
}


grubrc_theme_repo_clone () {

	## $ grubrc-theme-ctrl install dracula https://github.com/zshzero/dracula-grub2.git

	local name="$1"
	local repo_url="$2"

	if [ "none$name" = "none" ]; then
		util_error_echo
		util_error_echo "## Need name: "
		util_error_echo
		return 1
	fi

	if [ "none$repo_url" = "none" ]; then
		util_error_echo
		util_error_echo "## Need repo_url: "
		util_error_echo
		return 1
	fi

	local target_theme_path="$THE_GRUBRC_THEMES_DIR_PATH/$name"

	if [ -d "$target_theme_path" ]; then
		util_error_echo "## Theme is Exist: $target_theme_path"
		return 1
	fi


	local now="$(date +%Y%m%d_%s)"
	local temp_dir_path="$THE_GRUBRC_REPO_TEMP_BASE_DIR_PATH/${THE_GRUBRC_REPO_TEMP_BASE_DIR_NAME}.${now}"

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

grubrc_theme_repo_clone_to_tmp () {

	## $ grubrc-theme-ctrl install dracula https://github.com/zshzero/dracula-grub2.git

	local name="$1"
	local repo_url="$2"

	if [ "none$name" = "none" ]; then
		util_error_echo
		util_error_echo "## Need name: "
		util_error_echo
		return 1
	fi

	if [ "none$repo_url" = "none" ]; then
		util_error_echo
		util_error_echo "## Need repo_url: "
		util_error_echo
		return 1
	fi

	local now="$(date +%Y%m%d_%s)"
	local temp_dir_path="$THE_GRUBRC_REPO_TEMP_BASE_DIR_PATH/${THE_GRUBRC_REPO_TEMP_BASE_DIR_NAME}.${now}"

	util_error_echo "mkdir -p $temp_dir_path"
	mkdir -p "$temp_dir_path"

	util_error_echo "cd $temp_dir_path"
	cd "$temp_dir_path"

	util_error_echo "git clone --recursive $repo_url $name"
	git clone --recursive "$repo_url" "$name" ## git clone --recursive https://github.com/zshzero/dracula-grub2.git dracula

	#util_error_echo "cd $OLDPWD"
	#cd "$OLDPWD"

}

grubrc_theme_repo_copy_from_tmp () {

	local name="$1"

	if [ "none$name" = "none" ]; then
		util_error_echo
		util_error_echo "## Need name: "
		util_error_echo
		return 1
	fi


	local target_theme_path="$THE_GRUBRC_THEMES_DIR_PATH/$name"

	if [ -d "$target_theme_path" ]; then
		util_error_echo "## Theme is Exist: $target_theme_path"
		return 1
	fi

	util_error_echo "sudo mkdir -p $THE_GRUBRC_THEMES_DIR_PATH"
	sudo mkdir -p "$THE_GRUBRC_THEMES_DIR_PATH"

	util_error_echo "sudo cp -a $name $target_theme_path"
	sudo cp -a "$name" "$target_theme_path"


	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}



##
### Tail: Sys
################################################################################


################################################################################
### Head: Util / Grub Theme
##

util_attr_set_value () {

	local test="$4"
	local file="$3"
	local key="$1"
	local val="$2"
	#local pattern="s/^${key}=.*/${key}=\"${val}\"/g"
	local pattern="s/^${key}.*/${key}=\"${val}\"/g"

	#echo "$pattern"
	#sed -i 's/^GRUB_THEME=.*/GRUB_THEME=demo/g' /tmp/grub

	if [ "none$key" = "none" ]; then
		return
	fi

	if [ "none$file" = "none" ]; then
		return
	fi

	if ! [ -f "$file" ]; then
		return
	fi

	if [ "is_$test" = "is_test" ]; then
		sed "$pattern" "$file"
		return
	fi

	sed -i "$pattern" "$file"

}

util_grub_theme_config_line_is_exist () {
	local config_file_path="$1"

	if ! [ -f "$config_file_path" ]; then
		util_debug_echo "## Grub Config File Not Exist: $config_file_path"
		return 1
	fi

	grep '^GRUB_THEME=' "$config_file_path" 2>&1 > /dev/null
}

util_grub_theme_config_line_count () {
	local config_file_path="$1"

	if ! [ -f "$config_file_path" ]; then
		util_debug_echo "## Grub Config File Not Exist: $config_file_path"
		return 1
	fi

	grep '^GRUB_THEME=' "$config_file_path" 2> /dev/null | wc -l
}

util_grub_theme_config_line_remove () {
	local config_file_path="$1"

	if ! [ -f "$config_file_path" ]; then
		util_debug_echo "## Grub Config File Not Exist: $config_file_path"
		return 1
	fi

	sed -i '/^GRUB_THEME=/d' "$config_file_path"
}

util_grub_theme_config_line_comment () {
	local config_file_path="$1"

	if ! [ -f "$config_file_path" ]; then
		util_debug_echo "## Grub Config File Not Exist: $config_file_path"
		return 1
	fi

	sed -i 's/^GRUB_THEME=/#GRUB_THEME=/g' "$config_file_path"
}

util_grub_theme_config_line_set_value () {
	local theme_txt_path="$1"
	local config_file_path="$2"

	if ! [ -f "$config_file_path" ]; then
		util_debug_echo "## Grub Config File Not Exist: $config_file_path"
		return 1
	fi

	if [ "none$theme_txt_path" = 'none' ]; then
		theme_txt_path='/boot/grub/themes/default'
	fi

	## https://www.cyberciti.biz/faq/unix-linux-replace-string-words-in-many-files/
	#local value="${theme_txt_path/find/replace/}" ## replace only first find
	#local value="${theme_txt_path//find/replace/}" ## replace all find
	#local value="${theme_txt_path//\//\\\/}" ## escape only first /
	local value="${theme_txt_path//\//\\\/}" ## escape all /
	##value="${value//\"/\\\\\"}" ## escape all "

	util_error_echo "## Set { GRUB_THEME=\"$theme_txt_path\" }"

	sed -i "s/^GRUB_THEME=.*/GRUB_THEME=\"$value\"/g" "$config_file_path"
}

util_grub_theme_config_line_append () {
	##echo >> '/tmp/grub'
	local theme_txt_path="$1"
	local config_file_path="$2"

	util_error_echo "## Append { GRUB_THEME=\"$value\" }"

	echo 'GRUB_THEME="'"$theme_txt_path"'"' >> "$config_file_path"
}


##
### Tail: Util / Grub Theme
################################################################################


################################################################################
### Head: Sys / Grub Theme
##

sys_grub_theme_config_file_backup_dir_prepare () {

	local now="$(date +%Y%m%d_%s)"
	local base_backup_dir_path="$THE_GRUBRC_MASTER_CONFIG_BASE_BACKUP_DIR_PATH"
	local grub_backup_dir_path="$base_backup_dir_path/grub.bak/grub.bak.${now}"

	util_error_echo "mkdir -p $grub_backup_dir_path"
	mkdir -p "$grub_backup_dir_path"


	## overwrite
	THE_GRUBRC_MASTER_CONFIG_BACKUP_DIR_PATH="$grub_backup_dir_path"
	THE_GRUBRC_MASTER_CONFIG_BACKUP_FILE_PATH="$THE_GRUBRC_MASTER_CONFIG_BACKUP_DIR_PATH/$THE_GRUBRC_MASTER_CONFIG_FILE_NAME.old"
	THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH="$THE_GRUBRC_MASTER_CONFIG_BACKUP_DIR_PATH/$THE_GRUBRC_MASTER_CONFIG_FILE_NAME.new"


}

sys_grub_theme_config_file_backup () {
	sys_grub_theme_config_file_backup_dir_prepare

	util_error_echo "install -Dm644 $THE_GRUBRC_MASTER_CONFIG_FILE_PATH $THE_GRUBRC_MASTER_CONFIG_BACKUP_FILE_PATH"
	install -Dm644 "$THE_GRUBRC_MASTER_CONFIG_FILE_PATH" "$THE_GRUBRC_MASTER_CONFIG_BACKUP_FILE_PATH"
}

sys_grub_theme_config_file_copy () {
	sys_grub_theme_config_file_backup

	util_error_echo "install -Dm644 $THE_GRUBRC_MASTER_CONFIG_FILE_PATH $THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH"
	install -Dm644 "$THE_GRUBRC_MASTER_CONFIG_FILE_PATH" "$THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH"
}

sys_grub_theme_config_file_sync () {

	util_error_echo "sudo install -Dm644 $THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH $THE_GRUBRC_MASTER_CONFIG_FILE_PATH"
	sudo install -Dm644 "$THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH" "$THE_GRUBRC_MASTER_CONFIG_FILE_PATH"
}

sys_grub_theme_config_line_is_exist () {
	util_grub_theme_config_line_is_exist "$THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH"
}

sys_grub_theme_config_line_count () {
	util_grub_theme_config_line_count "$THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH"
}

sys_grub_theme_config_line_remove () {
	util_grub_theme_config_line_remove "$THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH"
}

sys_grub_theme_config_line_comment () {
	util_grub_theme_config_line_comment "$THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH"
}

sys_grub_theme_config_line_set_value () {
	local theme_txt_path="$1"
	util_grub_theme_config_line_set_value "$theme_txt_path" "$THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH"
}

sys_grub_theme_config_line_append () {
	local theme_txt_path="$1"
	util_grub_theme_config_line_append "$theme_txt_path" "$THE_GRUBRC_MASTER_CONFIG_TEMP_FILE_PATH"
}

sys_grub_theme_config_line_clear () {
	sys_grub_theme_config_line_remove
	#sys_grub_theme_config_line_comment
}


sys_grub_theme_config () {
	local theme_txt_path="$1"

	sys_grub_theme_config_file_copy

	if sys_grub_theme_config_line_is_exist; then

		if (( $(sys_grub_theme_config_line_count) > 1 )); then
			sys_grub_theme_config_line_comment
			sys_grub_theme_config_line_append "$theme_txt_path"
		else
			sys_grub_theme_config_line_set_value "$theme_txt_path"
		fi

	else
		##sys_grub_theme_config_line_append '/usr/share/grub/themes/manjaro/theme.txt'
		sys_grub_theme_config_line_append "$theme_txt_path"
	fi

	sys_grub_theme_config_file_sync

}

sys_grub_config_update () {

	util_error_echo

	if is_command_exist 'update-grub'; then
		util_error_echo "sudo update-grub"
		sudo update-grub
		return
	fi

	util_error_echo "sudo grub-mkconfig -o /boot/grub/grub.cfg"
	sudo grub-mkconfig -o /boot/grub/grub.cfg
	return
}



sys_grub_theme_get_name_v1 () {

	local theme_txt_path="$(sys_grub_theme_get)"
	local name="$(dirname "$theme_txt_path")"
	name="$(basename "$name")"
	echo "$name"
}

sys_grub_theme_get_name_v2 () {

	local theme_txt_path="$(sys_grub_theme_get)"

	## https://zh.wikipedia.org/wiki/Dirname
	local name="${theme_txt_path%/*}"
	## https://zh.wikipedia.org/wiki/Basename
	name="${name##*/}"
	echo "$name"
}

sys_grub_theme_get_name () {
	#sys_grub_theme_get_name_v1
	sys_grub_theme_get_name_v2
}

sys_grub_theme_get () {
	grep '^GRUB_THEME=' "$THE_GRUBRC_MASTER_CONFIG_FILE_PATH" | cut -d '=' -f 2 | cut -d '"' -f 2
}


sys_grub_theme_set () {

	local theme_txt_path="$1"
	sys_grub_theme_config "$theme_txt_path"

	sys_grub_config_update
}


##
### Tail: Sys / Grub Theme
################################################################################
