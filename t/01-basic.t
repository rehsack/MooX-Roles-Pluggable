#!perl

use 5.008003;
use strict;
use warnings FATAL => 'all';

use Test::More;
use File::Spec;
use File::Basename;
use lib File::Spec->catdir(dirname($0), "inc");

package #
    MyTest;

use Moo;

sub info {{}}

use MooX::Roles::Pluggable;

package #
    main;

my $mytest = MyTest->new();
my $info = $mytest->info();

ok($info->{Foo}, "Foo role consumed");
ok($info->{Bar}, "Bar role consumed");

done_testing();
