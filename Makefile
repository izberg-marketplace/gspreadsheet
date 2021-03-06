
help:
	@echo "make commands:"
	@echo "  make help  - this help"
	@echo "  make clean - remove files generated by distutils"
	@echo "  make test  - run tests"
	@echo "  make todo  - list notes in the code"

clean:
	find . -name "*.pyc" -delete
	find . -name ".DS_Store" -delete
	rm -rf .tox
	rm -rf MANIFEST
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info

test:
	tox

todo:
	grep -rI "TODO" gspreadsheet/

.PHONY: help clean test todo
