

################################################################################
### Head: Model theme_dracula
##

mod_theme_dracula_install () {

	## https://github.com/zshzero/dracula-grub2.git

	local name='dracula'
	local repo_url='https://github.com/zshzero/dracula-grub2.git'


	util_error_echo
	grubrc_theme_repo_clone "$name" "$repo_url"
	util_error_echo


	util_error_echo
	util_error_echo "## Please Run to Change:"
	util_error_echo
	util_error_echo "grubrc-theme-ctrl set $name"
	util_error_echo

}

##
### Tail: Model theme_dracula
################################################################################
