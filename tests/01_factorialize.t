use Test::More;
my $IN_TEST=1;

require './factorialize.pl';


is(
   factorialize(5),
   120,
   'Factoriel 5',
   );

is(
   factorialize(10),
   3628800,
   'Factoriel 10',
   );

is(
   factorialize(20),
   2432902008176640000,
   'Factoriel 20',
   );

is(
   factorialize(0),
   1,
   'Factoriel 0',
   );

done_testing();
