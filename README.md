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
hlsilibi
crpeklcu
godlwijo
rutlvity
ryslzabe
pyholaly
zyvlmowi
frprkiwy
mrfebavu
tepixevi
dotrcyku
xuflrigy
rexemilu
qonibizi
pldrqrdo
syjltavi
tesumifr
llpapafe
burydanl
kyxawavu

$ perl passwdgen -c 3 -l 12 -u -n
FRgatYvOSisY
coqYmlLEHRWy
taKYZRWUMuTU

$ perl passwdgen -c 3 -l 50 -u -n -s
by1eC?p*c+d:9r4A6/re7UX=t^7YR[SafIM$X^f-SUP*4#v~tE
firyR+Glrlw$5OV)tRt~WaB]q=x&9Rq-J^4^BLnUxlj*Cr8/c/
dOD.9@L)4/7@P~1EW)vok^Hi9aX:7/xLm(xYD/sac:2=P)G)Z!

$ perl passwdgen -c 3 -f were
werexlgr
rosiwere
zicawere
```

## Install

Copy script `passwdgen` to your favourite path and set executable bit with `chmod +x passwdgen` or use perl explicitly (as you can see in examples).
