#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

sub finLongestWord{
  my ($string) = @_;
  my $longueur=0;
  my @tableau = split(" ", $string);
  
  print Dumper @tableau;

  foreach my $i (@tableau){
    if ($longueur < length($i)){
      $longueur = length($i);
    }	
  }
  return $longueur;
}
my $plusLong = finLongestWord("The quick brown fox jumped over the lazy dog");
print "la longueur du plus long mot est de : $plusLong\n";


