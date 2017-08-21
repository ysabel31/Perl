#!/usr/bin/env perl

use warnings;
require './DebugPrint.pm';
use Data::Dumper;
use List::Util;

use strict;
sub sumAll
{
  my $somme = 0;
  print Dumper @_;
  my $max = List::Util::max @_;
  +print "$max\n";
  my $min = List::Util::min @_;
  print "$min\n";
  return List::Util::sum $min..$max;
}

my $ret = sumAll(1,4);
print "somme ".$ret."\n";
1;
