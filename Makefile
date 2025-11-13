#
# Dotfiles Makefile
#
# References:
#
# https://stackoverflow.com/questions/5618615/check-if-a-program-exists-from-a-makefile
#
SHELL := /bin/bash


.SILENT: help


.PHONY: default
default: help


# The following fgrep will dynamically print all targets
# that have a comment beginning with two hashes including help.
.PHONY: help
help:				## Show help message.
	echo "Usage: make [target]"
	echo ""
	echo "Targets:"
	echo ""
	fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


.PHONY: setup_mac
setup_mac:			## Setup macOS by installing Homebrew packages and configuring system preferences
	@echo "Setting up macOS..."
	@echo "Installing Homebrew packages..."
	./macos/brew.sh
	@echo "Configuring macOS system preferences..."
	./macos/macos.sh
	@echo "macOS setup complete!"


.PHONY: install_brew_packages
install_brew_packages:		## Install Homebrew packages only
	@echo "Installing Homebrew packages..."
	./macos/brew.sh


.PHONY: configure_macos
configure_macos:		## Configure macOS system preferences only
	@echo "Configuring macOS system preferences..."
	./macos/macos.sh
