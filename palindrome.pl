#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

sub palindrome{
  my ($str) = @_;
  $str =~ s/[^a-zA-Z0-9]//g;
  $str = uc $str;
  my @tableau = split("",$str);
  @tableau=reverse(@tableau);
  print Dumper(@tableau);
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

print palindrome("Hello ysa");
print "\n";


