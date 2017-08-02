# passwdgen
Human readable and pronounceable password generator writen in perl. Freely inspired by utility on old SCO OpenServer.

But it can generate stronger password, with special characers and arbitrary
lenght. Program generate proposals and user can choose (and modify) by own taste.

## Overview
```
$ perl passwdgen -h
 -h ... help
 -u ... use upercase too
 -s ... use special characters too
 -n ... use numbers too
 -c x ... count of suggestion
 -l x ... length of password
 -f 'xx' ... regex in context
```

Some examples:
```
$ perl passwdgen
sukarecu
ziximlqi
prjitaho
hynitrte
pocejaci
cilurorr
kyjulaql
qyvrwyxe
gikifutu
humujlhl
gytlveju
muqaglva
wlkljuzl
qyconuzi
jamogixe
slhanexl
zazudano
nlmlqexl
grvusitl
covyqrra

$ perl passwdgen -c 3 -l 12 -u -n
FLQIzOmlrYpI
nyJE2LSLnEkR
ZoWicUWyXLKL

$ perl passwdgen -c 3 -l 50 -u -n -s
K$W]9*w?8iR[G$c#JLvi1}Pok!h/Z:m_2!n*9]l,S*N/Z$M^7^
K^VYBublZr0&K)f?HL1,M&q_k@7r8lk.v+s_M/h,T*f@x-P]d*
g*nI4Ol[G&gyP{3iprM%X}g[vRL*D^l:4L0RF-0*NeV-GOhYL(

$ perl passwdgen -c 3 -f were
wereqagi
cywerecy
wereqiny
```

## Install

Copy script `passwdgen` to your favourite path and set executable bit with `chmod +x passwdgen` or use perl explicitly (as you can see in examples).
