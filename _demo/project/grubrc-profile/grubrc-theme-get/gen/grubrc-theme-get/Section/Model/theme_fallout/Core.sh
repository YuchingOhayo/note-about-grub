

################################################################################
### Head: Model theme_fallout
##

mod_theme_fallout_install () {

	## https://github.com/shvchk/fallout-grub-theme

	local name='fallout'
	local repo_url='https://github.com/shvchk/fallout-grub-theme.git'


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
### Tail: Model theme_fallout
################################################################################
