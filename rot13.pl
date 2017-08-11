#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub rot13
{
  my ($str)= @_;
  my $strChiffre = "";
  for (my $indice = 0; $indice < length($str);$indice++)
  {
    my $num = ord(substr $str, $indice, 1);
    print "Indice = $indice num = $num\n";
    if ($num >= ord("A") && $num <= ord("Z") )
    {
      $num += 13;
      if ($num > ord("Z") )
      {
        $num-=26;
      }
    }
    $strChiffre .= chr($num);
  }
  return $strChiffre;
}

my $ret = rot13("SERR PBQR PNZC");
print $ret;
1;
