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
	@echo '	$$ make install'
	@echo
	@echo '	$$ make update'
	@echo


.PHONY: help


install:
	sudo install -Dm755 ./40_custom /etc/grub.d/40_custom
	cat /etc/grub.d/40_custom
.PHONY: install

update:
	sudo update-grub
.PHONY: update
