# passwdgen
Human readable and pronounceable password generator writen in perl.

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
dedaplgy
reprfafu
dumidywo
qrgunuly
glgyjeri
kolicyki
xrroxifr
syqybuhe
bumlnagu
mumoxujo
hlrujyqu
junypira
jlpaxune
bykywapa
zlxugety
rawldixo
nlfysuqe
bygrvelu
qisitifu
zavycavy

$ perl passwdgen -c 3 -l 12 -u -n
2IBOrlwA8O5o
7rhRxI1LLuXR
krFyXEwYzlTA

$ perl passwdgen -c 3 -l 50 -u -n -s
p@woS}3oHIlUBuJo2&5%ned&t_j{f[t^0(taB:4RBu8~qon/qi
2=6*9~tEG$P}4iN@Z@q[M)CIg&5%V=G^T_ZuL+0{p?RrveN!cY
p&Cu9eT^l*s$f/C{3:8)N@V}T*T#4[9yJ!4_Zuk~w)La4:DygE

$ perl passwdgen -c 3 -f were
weregave
weremaxy
xiwereku
```

## Install

Copy script to your favourite path and set executable bit with `chmod +x passwdgen` or use perl explicitly (as you can see in examples).
