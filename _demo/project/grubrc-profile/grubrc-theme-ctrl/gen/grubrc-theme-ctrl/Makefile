default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make app'
	@echo

.PHONY: help


prepare:
	pamac install php
.PHONY: prepare


app:
	php grubrc-theme-ctrl.sh > ../../grubrc-theme-ctrl
	chmod 755 ../../grubrc-theme-ctrl
.PHONY: app
