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
hlvafinr
frvrjify
frnrblqr
xrpygrca
krjahubr
qexirrdi
zlfrsoja
nudirivl
kusrbrml
srmimuju
nobrsafr
kuzakudr
debulrca
wltlwajy
sawosovr
titaklfy
vymlxaso
bytrgrxi
vrvuklni
zrtefywo

$ perl passwdgen -c 3 -l 12 -u -n
6aPIQuMilRdA
5lcaZyLr7igo
hOjYgYJLZOTl

$ perl passwdgen -c 3 -l 50 -u -n -s
led:FEX_7^GI2lr~j!1*x=D-q:h=8rp(6(3&WoK[j.G=6usU5=
7ov^V)jOX}xuRlmOV/sU2}K!0!m%R#Wyflz#d_N]4}F.coK)9a
WUw=M-v]M:tu3LfEx-p}RE3e4oF,grrlw[TOBA4?Q*Ho0*gEDO

$ perl passwdgen -c 3 -f were
qawerenu
huwerevi
prweredr
```

## Install

Copy script `passwdgen` to your favourite path and set executable bit with `chmod +x passwdgen` or use perl explicitly (as you can see in examples).
