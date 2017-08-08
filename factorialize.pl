#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';

sub factorialize{
  my ($nombre) = @_;
  if( $nombre > 1 ){
    $nombre = $nombre * factorialize($nombre -1);		
  }
  else{
    return 1	
  }	
}

DebugPrint(factorialize(5));

1;
