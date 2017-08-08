sub DebugPrint
{
  print @_ unless defined($IN_TEST);
  print "\n" unless defined($IN_TEST);
}

1;
