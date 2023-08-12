GIT_TAG = $(shell git describe --tag | sed 's/v//g')

.PHONY: default
default:
	@echo "No."

.PHONY: build
build:
	@rm -rf build
	@mkdir -p build
	@cp license fox-requirement-license
	@zip -9r build/fox-requirement-$(GIT_TAG).zip \
		fox_requirement_ren.py \
		fox-requirement-license
	@rm fox-requirement-license