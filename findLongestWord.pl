#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub finLongestWord{
  my ($string) = @_;
  my $longueur=0;
  my @tableau = split(" ", $string);
  
  DebugPrint(Dumper @tableau);

  foreach my $i (@tableau){
    if ($longueur < length($i)){
      $longueur = length($i);
    }	
  }
  return $longueur;
}
my $plusLong = finLongestWord("The quick brown fox jumped over the lazy dog");
DebugPrint("la longueur du plus long mot est de : $plusLong\n");

1;
