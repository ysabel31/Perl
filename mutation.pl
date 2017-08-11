#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub mutation
{
  my ($tab)=@_;
  my $chaine = scalar (lc @{$tab}[0]);
  my $recherche = scalar(lc @{$tab}[1]);
  print "Recherche $recherche\n";
  print "chaine $chaine\n";

  for (my $indice=0; $indice < scalar @{$tab};$indice++)
  {
    if ((index $chaine, $recherche) == -1)
    {
      return 0;
    }
  }
  return 1;
}

my $ret = mutation(["hello","hello"]);

print $ret;
1;
