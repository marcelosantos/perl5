#!/usr/bin/perl -w

use strict;
use Test::More tests => 11; # two extra tests in each BaseInc*.pm

sub rendered_comparison {
    my ( $got, $expected ) = @_;
    push @$got,      ( '(missing)' )          x ( @$expected - @$got ) if @$got < @$expected;
    push @$expected, ( '(should not exist)' ) x ( @$got - @$expected ) if @$got > @$expected;
    join "\n", map +( "got  [$_] " . $got->[$_], 'expected'.(' ' x length).$expected->[$_] ), 0 .. $#$got;
}

use lib 't/lib', sub {()};

# make it look like an older perl
BEGIN { push @INC, '.' if $INC[-1] ne '.' }

my @expected; BEGIN { @expected = @INC }

use base 'BaseIncChecker';

BEGIN {
    @t::lib::Dummy::ISA = (); # make it look like an optional load
    my $success = eval q{use base 't::lib::Dummy'}, my $err = $@;
    ok !$success, 'loading optional modules from . fails';
    is_deeply \@INC, \@expected, '... without changes to @INC'
        or diag rendered_comparison [@INC], [@expected];
    like $err, qr!Base class package "t::lib::Dummy" is not empty but "t/lib/Dummy\.pm" exists in the current directory\.!,
        '... and the proper error message';
}

BEGIN { @BaseIncExtender::ISA = () } # make it look like an optional load
use base 'BaseIncExtender';

BEGIN {
    unshift @expected, 't/lib/blahblah';
    is_deeply \@INC, \@expected, 'modules loaded by base can prepend entries to @INC'
        or diag rendered_comparison [@INC], [@expected];
}

BEGIN { @BaseIncDoubleExtender::ISA = () } # make it look like an optional load
use base 'BaseIncDoubleExtender';

BEGIN {
    @expected = ( 't/lib/blahdeblah', @expected, 't/lib/on-end' );
    is_deeply \@INC, \@expected, 'modules loaded by base can extend @INC at both ends'
        or diag rendered_comparison [@INC], [@expected];
}
