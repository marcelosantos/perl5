#!/usr/bin/perl -w

use strict;
use Test::More tests => 14; # two extra tests in each BaseInc*.pm

use lib 't/lib', sub {()};

# make it look like an older perl
BEGIN { push @INC, '.' if $INC[-1] ne '.' }

use base 'BaseIncChecker';

BEGIN { @BaseIncExtender::ISA = () } # make it look like an optional load
use base 'BaseIncExtender';

BEGIN {
    is $INC[0], 't/lib/blahblah', 'modules loaded by base can prepend entries to @INC';
    is $INC[1], 't/lib', 'previously prepended additional @INC entry remains';
    is $INC[-1], '.', 'dot still at end @INC after using base';
}

BEGIN { @BaseIncDoubleExtender::ISA = () } # make it look like an optional load
use base 'BaseIncDoubleExtender';

BEGIN {
    is $INC[0], 't/lib/blahdeblah', 'modules loaded by base can prepend entries to @INC';
    is $INC[1], 't/lib/blahblah', 'previously prepended additional @INC entry remains';
    is $INC[2], 't/lib', 'previously prepended additional @INC entry remains';
    is $INC[-2], '.', 'dot still at previous end of @INC after using base';
    is $INC[-1], 't/lib/on-end', 'modules loaded by base can append entries to @INC';
}
