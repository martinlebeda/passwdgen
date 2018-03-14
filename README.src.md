# passwdgen
Human readable and pronounceable password generator writen in perl. Freely inspired by utility on old SCO OpenServer. 

But it can generate stronger password, with special characers and arbitrary
lenght. Program generate proposals and user can choose (and modify) by own taste.

## Overview
```
#exec perl passwdgen -h
```

Some examples:
```
$ perl passwdgen 
#exec perl passwdgen 

$ perl passwdgen -c 3 -l 12 -u -n
#exec perl passwdgen -c 3 -l 12 -u -n

$ perl passwdgen -c 3 -l 50 -u -n -s
#exec perl passwdgen -c 3 -l 50 -u -n -s

$ perl passwdgen -c 3 -f were
#exec perl passwdgen -c 3 -f were
```

## Install

Copy script `passwdgen` to your favourite path and set executable bit with `chmod +x passwdgen` or use perl explicitly (as you can see in examples).
