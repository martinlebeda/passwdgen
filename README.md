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
monadycl
moserepy
xisugixl
crlrjonl
srrebanl
jazicoji
zokrgowo
jlmizlcu
nupikynl
viroxugo
fezejesa
vawoqlxy
tllewevy
glkiqipy
sucrhldi
dlbrduji
pijikira
xogatyru
foxinlwl
hypamabi

$ perl passwdgen -c 3 -l 12 -u -n
bOqepE9I1UFe
PemiQoCaPO9e
dIXyneDinYHo

$ perl passwdgen -c 3 -l 50 -u -n -s
lYK_b@neFuC-G?ZLJLMlMofLMrW,g@L}G_V{N.5yP(D,q,M:ny
8:2OR{7(f)K)J{p{v+6=H:S{V!R^GLT{jyLLS=w-W*K-v[JU9L
D]j+PUzuD{jLR!m=D@k^v:8~F?T:9?F.g&Bi8RvEV%typAqlgl

$ perl passwdgen -c 3 -f were
niwereka
werexebr
werejogo
```

## Install

Copy script `passwdgen` to your favourite path and set executable bit with `chmod +x passwdgen` or use perl explicitly (as you can see in examples).
