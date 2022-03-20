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
	@echo '	$$ make remove'
	@echo


.PHONY: help


install:
	sudo install -Dm644 ./custom.cfg /boot/grub/custom.cfg
	cat /boot/grub/custom.cfg
.PHONY: install

remove:
	sudo rm -f /boot/grub/custom.cfg
.PHONY: remove
