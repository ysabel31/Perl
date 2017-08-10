#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub chunkArrayInGroups
{
  my ($tab,$size)=@_;
  
  my @result=();
  for (my $indice=0; $indice < scalar @{$tab};$indice+=$size)
  {
    my @tabSlice = @{$tab}[$indice..($indice+$size-1)];
    push @result, \@tabSlice;
  }
  return \@result;
}
my $tab = chunkArrayInGroups(["a","b","c","d"],2);
print Dumper $tab;
1;
