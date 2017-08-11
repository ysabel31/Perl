#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub destroyer
{
    my ($refArr,@arrFiltres)= @_;
    my @arr = @{$refArr};
    foreach my $filtre (@arrFiltres) 
    {
      @arr = grep { $_ ne $filtre} @arr;
    }
    return @arr;
}

my @tabRet = destroyer([3,5,1,2,2],2,3,5);
print Dumper @tabRet;
1;
