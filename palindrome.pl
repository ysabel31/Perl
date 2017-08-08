#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';

use Data::Dumper;

sub palindrome{
  my ($str) = @_;
  $str =~ s/[^a-zA-Z0-9]//g;
  $str = uc $str;
  my @tableau = split("",$str);
  @tableau=reverse(@tableau);
  DebugPrint(Dumper(@tableau));
  my $recontruit = join("",@tableau);
  print "$recontruit \n";
  if ($recontruit eq $str){
    return 1; 
  }  
  else
  {
    return 0;
  }  
}

DebugPrint(palindrome("Hello ysa"));

1;
