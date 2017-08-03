README.md: README.mds
	mdpreproc < README.mds > README.md

install: README.md
	cp -f passwdgen ~/bin/passwdgen
	chmod +x ~/bin/passwdgen
