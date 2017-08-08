#!/usr/bin/env perl

use strict;
use warnings;

sub factorialize{
  my ($nombre) = @_;
  if( $nombre > 1 ){
    $nombre = $nombre * factorialize($nombre -1);		
  }
  else{
    return 1	
  }	
}

diag(factorialize(5));

1;
