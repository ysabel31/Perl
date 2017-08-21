#!/usr/bin/env perl


use warnings;
use strict;
require './DebugPrint.pm';
use Data::Dumper;
use List::Util;
use List::MoreUtils qw(firstidx);
sub diffArray 
{
  my ($arr1,$arr2 ) = @_;
  my @arr1 = @{$arr1};
  my @arr2 = @{$arr2};

  if ( scalar @arr1 == 0 )
  {
    return @arr2;
  }

  if ( scalar @arr2 == 0 )
  {
    return @arr1;
  }

  my @arrConcat = (@arr1,@arr2);
  my @arrDiff = ();

  while ((scalar @arrConcat) > 0)
  {
    my $element = shift(@arrConcat);
    print Dumper \@arrConcat;
    my $retIndex = firstidx{$_ == $element} @arrConcat;
    print "retindex ".$retIndex."\n";
    if ($retIndex == -1)
    {
      push @arrDiff,$element;
    }
    else
    {
      @arrConcat = grep {$_ != $element} @arrConcat;
    }
  }
    return @arrDiff;
}
my @ret = diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5]);
print Dumper \@ret;

1;
