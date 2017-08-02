#!/bin/bash

cp -f passwdgen ~/bin/passwdgen
chmod +x ~/bin/passwdgen

~/bin/mdpreproc < README.mds > README.md
git commit -a
git push
