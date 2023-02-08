install:
	git submodule update --init --recursive
	npm install
	bower install

serve:
	grunt serve

dist:
	grunt dist

.PHONY: install serve dist
