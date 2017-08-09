#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';
use Data::Dumper;

sub largestOfFour
{
	my @tabMax=();
  my ($tab) = @_;
  foreach my $data (@{$tab})
  {
	  my $max=0;
    foreach my $element (@{$data})
    {
      print "element $element\n";
			if ($max < $element)
      {
				$max = $element;
			}
    }
		push(@tabMax, $max);
  }
  return \@tabMax;
}

my @tabParm = ([4, 5, 1, 3],
	[13, 27, 18, 26],
	[32, 35, 37, 39],
	[1000, 1001, 857, 1]
);

print Dumper largestOfFour(\@tabParm);
1;
