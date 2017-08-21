#!/usr/bin/env perl


use warnings;
use strict;
require './DebugPrint.pm';
use Data::Dumper;

sub convertToRoman {
	my ($num) = @_;
  my @tabCorr = ();
  my @tabNum = ();
  $tabCorr[1]= "I";
  $tabCorr[2]= "II";
  $tabCorr[3]= "III";
  $tabCorr[4]= "IV";
  $tabCorr[5]= "V";
  $tabCorr[6]= "VI";
  $tabCorr[7]= "VII";
  $tabCorr[8]= "VIII";
  $tabCorr[9]= "IX";
  $tabCorr[10]= "X";
  $tabCorr[20]= "XX";
  $tabCorr[30]= "XXX";
  $tabCorr[40]= "XL";
  $tabCorr[50]= "L";
  $tabCorr[60]= "LX";
  $tabCorr[70]= "LXX";
  $tabCorr[80]= "LXXX";
  $tabCorr[90]= "XC";
  $tabCorr[100]= "C";
  $tabCorr[200]= "CC";
  $tabCorr[300]= "CCC";
  $tabCorr[400]= "CD";
  $tabCorr[500]= "D";
  $tabCorr[600]= "DC";
  $tabCorr[700]= "DCC";
  $tabCorr[800]= "DCCC";
  $tabCorr[900]= "CM";  
  $tabCorr[1000]= "M";
  $tabCorr[2000]= "MM";
  $tabCorr[3000]= "MMM";
  
  my $chaine = ''; 
  @tabNum = reverse(split(//,$num));
  
  for ( my $indice = (scalar @tabNum);$indice >= 0; $indice--)
  {
    if ( defined( $tabNum[$indice]) && $tabNum[$indice] > 0) 
    {  
      $chaine .= $tabCorr[$tabNum[$indice]* (10**$indice)];
    }  
  }  
  
  return($chaine);
}

my $ret = convertToRoman(3999);
print $ret;