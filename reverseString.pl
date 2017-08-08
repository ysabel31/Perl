#!/usr/bin/env perl

use strict;
use warnings;
require './DebugPrint.pm';

sub reverseString
{
  return reverse(@_)
}

reverseString("Hello");

1;
