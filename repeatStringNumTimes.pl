#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub repeatStringNumTimes
{
  my ($str,$num) = @_;
  my $chaine = $str;
  if ($num > 1)
  {
    $chaine = $str x $num;
  }
  return $chaine;
}

my $strCat = repeatStringNumTimes('abc',4);
print $strCat;

1;
