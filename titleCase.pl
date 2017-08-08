#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub titleCase{
  my ($str) = @_;
  my @tab = split(/\s+/,lc $str);
  DebugPrint( Dumper @tab);
  foreach my $i (@tab){
    $i = ucfirst($i);
  }
  return join(" ",@tab);
}
my $strRet = titleCase("I'm a liTTle tea pot");
DebugPrint("$strRet\n");

1;
