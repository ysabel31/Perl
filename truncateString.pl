#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub truncateString
{
  my  $points = '...';
  my ($str,$num)=@_;

   print "str => $str longueur => length($str)\nnum => $num\n";
  
  if ( $num <= 3  )
  {
    $str = substr($str, 0, $num).$points; 
    print "<= 3 => $str";   
  
  }
  elsif (length($str) > $num) 
  {
      $str = substr($str, 0, $num - 3).$points;            
      print ">num => $str";   
  
  } 

  return $str;

}

my $ret = truncateString("A-tisket a-tasket A green and yellow basket", 11);
print "valeur de retour => $ret\n";

1;
