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
	@echo '	$$ make download'
	@echo


.PHONY: help


install:
	sudo install -Dm644 ./custom.cfg /boot/grub/custom.cfg
	cat /boot/grub/custom.cfg
.PHONY: install

remove:
	sudo rm -f /boot/grub/custom.cfg
.PHONY: remove


download:
	wget -c 'https://github.com/archcraft-os/releases/releases/download/v21.09/archcraft-2021.09.25-x86_64.iso'
.PHONY: download
