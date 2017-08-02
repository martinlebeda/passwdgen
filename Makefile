docs: README.md README.mds
	mdpreproc < README.mds > README.md

push: docs
	git commit -a
	git push

deploy: docs push
	cp -f passwdgen ~/bin/passwdgen
	chmod +x ~/bin/passwdgen
