#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub getIndexToIns
{
  my ($tab,$num)= @_;
  my @arr = @{$tab};
  my @arrTrie=();
  print"avant tri \n";
  print Dumper @arr;
  @arrTrie = sort {$a<=>$b} @arr;
  print "après tri\n";
  print Dumper @arrTrie;
  print("\nNumérique recherché => $num\n");
  for (my $indice = 0; $indice < scalar @arrTrie;$indice++)
  {
    if ($arrTrie[$indice] >= $num)
    {
      return $indice;
    }
  }
  return scalar @arrTrie;
}

my $ret = getIndexToIns([5,3,20,3],5);
print "indice du tableau ou l'on doit effectuer l'insertion = $ret\n";
1;

