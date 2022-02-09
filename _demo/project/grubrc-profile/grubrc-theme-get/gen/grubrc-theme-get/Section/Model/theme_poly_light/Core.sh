

################################################################################
### Head: Model theme_poly_light
##

mod_theme_poly_light_install () {

	##
	## https://www.gnome-look.org/p/1176413
	## https://github.com/shvchk/poly-light
	##

	local name='poly_light'
	local repo_url='https://github.com/shvchk/poly-light.git'


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
### Tail: Model theme_poly_light
################################################################################
