#!/bin/bash

cp -f passwdgen ~/bin/passwdgen
chmod +x ~/bin/passwdgen

~/bin/mdpreproc < README.mds > README.md
git add README.md
git commit
git push
