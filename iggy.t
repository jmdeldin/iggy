use diagnostics;
use warnings;
use strict;
use Test::More qw( no_plan );

do './iggy';

is(cap(88, 0, 88), 88, 'n, when n==max ');
is(cap(100, 0, 88), 88, 'max, when n>=max ');
is(cap(10, 0, 88), 10, 'n, when n<max');
is(cap(1, 2, 88), 2, 'min, when n<min');
is(cap(-1, -10, 88), -1, 'n, when n>min');
is(cap(-1, -1, 88), -1, 'n, when n==min');
