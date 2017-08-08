use Test::More;
my $IN_TEST=1;

require './reverseString.pl';

is(
   reverseString("hello"),
   "olleh",
   'hello',
   );

is(
   reverseString("Howdy"),
   "ydwoH",
   'Howdy',
   );

is(
   reverseString("Greetings from Earth"),
   "htraE morf sgniteerG",
   'Greetings from Earth',
   );

done_testing();
