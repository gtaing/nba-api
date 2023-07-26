.ONESHELL:
ENV_PREFIX=.venv/bin/


.PHONY: help
help:             ## Show the help.
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@fgrep "##" Makefile | fgrep -v fgrep

.PHONY: show
show:
	@echo "Current environment:"
	@ $(ENV_PREFIX)python --version
	@ $(ENV_PREFIX)python -m site

.PHONY: venv
venv:
	python3 -m venv .venv

.PHONY: install
install:
	source .venv/bin/activate # Create virtual env
	.venv/bin/pip install -r requirements-dev.txt # Install packages in requirements-dev.txt

.PHONY: update
update:
	source .venv/bin/activate # Create virtual env
	.venv/bin/pip install -U -r requirements-dev.txt # Install packages in requirements-dev.txt	