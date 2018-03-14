# passwdgen
Human readable and pronounceable password generator writen in perl. Freely inspired by utility on old SCO OpenServer. 

But it can generate stronger password, with special characers and arbitrary
lenght. Program generate proposals and user can choose (and modify) by own taste.

## Overview
```
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
bykehykr
glhimoxo
kedecrme
xlbyslpu
diblcrxi
frflzrho
hrvudrli
prrlllhr
jiwujrwy
hugyhivi
nyqidifo
hlcisykr
crnejobi
nuprkide
jrrinuna
ponamrne
pucodldo
lrmafabo
lymyhlfu
xrbucoke

$ perl passwdgen -c 3 -l 12 -u -n
qeqy6a4I9YTy
FYXaBIPOBYTe
KU7yqatuCyzY

$ perl passwdgen -c 3 -l 50 -u -n -s
5[G(Puh_h}t]7~N~p*luc(QyJ!b-MUH&z]T&r{d[T#Q(d:t^Re
k!T@p#9!RUt*D,J=r:wy0=v#Z*v:MLW~3A9A0.W/V(9o7eP%V)
fRxen!1!mRMUv{rik[w]K}q@N]nIK~5@d)v*cyKrJoLEX.KUN,

$ perl passwdgen -c 3 -f were
werelrnl
bawerepl
zeweregy
```

## Install

Copy script `passwdgen` to your favourite path and set executable bit with `chmod +x passwdgen` or use perl explicitly (as you can see in examples).
