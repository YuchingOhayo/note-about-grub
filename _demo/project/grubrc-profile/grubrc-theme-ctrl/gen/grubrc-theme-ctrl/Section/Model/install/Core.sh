

################################################################################
### Head: Model grubrc_theme_install
##

mod_grubrc_theme_install () {

	## $ grubrc-theme-ctrl install poly_dark https://github.com/shvchk/poly-dark.git

	local name="$1"
	local repo_url="$2"

	grubrc_theme_repo_clone "$name" "$repo_url"

}

##
### Tail: Model grubrc_theme_install
################################################################################
