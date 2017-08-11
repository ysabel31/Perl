#!/usr/bin/env perl
use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub slasher
{
  my ($tab,$howMany)= @_;
  #print Dumper @{$tab};
  if (scalar @{$tab}> $howMany)
  {
    splice @{$tab}, 0,$howMany;
  }
  else 
  {
    @{$tab} = ();
  }

  return $tab;
}
my $tabSplice = slasher(["1","2","3"],3);
print Dumper @{$tabSplice};
1;
