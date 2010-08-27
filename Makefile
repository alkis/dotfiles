all:
	rsync -Cav --exclude Makefile $(PWD)/ $(HOME)/
