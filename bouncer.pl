#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub bouncer
{
  my ($tab)= @_;
  my @tableau = grep { $_ } @${tab};
  return \@tableau;
}

my $ret = bouncer([7,"ate",0,9]);
print Dumper $ret;
1;
