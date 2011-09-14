#!/usr/bin/perl
# 
# File name: passwdgen.pl Date:      2002/12/30 13:02 Author:     
#
# Popis: Generátor absolutnì nezapamatovatelných, ale silných hesel. Slouží
# pøedevším pro hesla, která si nemusím pamatovat nebo se používají
# automaticky nebo je kopíruji z heslového trezoru pøez clipboard.
#
# Zmìny: 2002/12/30  - created

use locale;
use Getopt::Std;

&getopts("huc:l:f:sn");

if ($opt_h) {
   print " -h ... help\n";
   print " -u ... use upercase too\n";
   print " -s ... use special characters too\n";
   print " -n ... use numbers too\n";
   print " -c x ... count of suggestion\n";
   print " -l x ... length of password\n";
   print " -f 'xx' ... regex in context\n";
   exit;
}


if ($opt_l > 1) {$delka = $opt_l;}
else {$delka = 8;} #vychozi hodnota pro delku hesla

if ($opt_c > 1) {$pocet = $opt_c;}
else {$pocet = 20;} #výchozí hodnota pro pocet hesel v nabídce

if ($opt_f) {$vzor = $opt_f;}
else {$vzor = '.*';} #výchozí hodnota pro vzor v heslu

@samohlasky = qw(a e i o u);
if ($opt_u) { @samohlasky = (@samohlasky, qw(A E I O U y Y)); }
@souhlasky = qw(b c d f g h j k l m n p q r s t v w x); 
if ($opt_u) { @souhlasky = (@souhlasky, qw(B C D F G H J K L M N P Q R S T V W X z Z)); }

if ($opt_s) { @samohlasky = (@samohlasky, qw(/ * - + = _ [ ] { } ( ) . , : ? ~ ! @ # $ % ^ & *));}
if ($opt_n) { @souhlasky = (@souhlasky, qw(1 2 3 4 5 6 7 8 9 0));}

$psam = @samohlasky;
$psou = @souhlasky;

srand(time() ^ ($$ + ($$ << 15)));# inicializace generátoru

while ($j < $pocet) {
   $typ = 1;
   for ($i=0;$i<$delka;$i++){ # generování náhodného hesla
      if ($typ) {
         $cislo = int(rand($psou));
         $heslo .= $souhlasky[$cislo];
         $typ = not($typ);
      } else {
         $cislo = int(rand($psam));
         $heslo .= $samohlasky[$cislo];
         $typ = not($typ);
      }        
   }
   if ($heslo =~ /.*$vzor.*/) {
      $j++;
      print "$heslo\n";
   }
   $heslo = '';
}

