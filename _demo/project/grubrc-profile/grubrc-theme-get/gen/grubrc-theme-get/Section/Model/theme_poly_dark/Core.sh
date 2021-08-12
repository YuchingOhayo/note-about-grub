

################################################################################
### Head: Model theme_poly_dark
##

mod_theme_poly_dark_install () {

	## https://github.com/shvchk/poly-dark

	local name='poly_dark'
	local repo_url='https://github.com/shvchk/poly-dark.git'


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
### Tail: Model theme_poly_dark
################################################################################
