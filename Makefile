.PHONY: install test examples

install:
	sh ./install.sh

test:
	sh ./scripts/test.sh

examples:
	sh ./scripts/example-run.sh
