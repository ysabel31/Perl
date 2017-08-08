#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
sub titleCase{
  my ($str) = @_;
  @tab = split(/\s+/,str);
  print dumper @tab;
}
my $strRet = titleCase("I'm a little tea pot");
print "Hello world!\n"
