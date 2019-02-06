install:
	@find $(PWD) -type f ! -path '*/Makefile' -exec ln -s {} ~/ \;
