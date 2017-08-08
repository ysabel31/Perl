#!/usr/bin/env perl

use strict;
use warnings;
use './DebugPrint.pm';
use Data::Dumper;

sub confirmEnding{
  my ($str,$target) = @_;
  my $pos = 0;
  DebugPrint("string => $str\ntarget => $target\n");
  if (length($str) > length($target)){
    $pos = length($str) - length($target);
  }
  else{
    return 0;
  }
  DebugPrint("Position => $pos\n");
  if (substr($str,$pos,length($target)) eq $target){
    return 1;
  }
  else{
    return 0;
  }
}
my $ret = confirmEnding("Bastian","on");
DebugPrint("valeur retour Bastian / n => $ret\n");

1;
