package BaseIncExtender;

BEGIN { package main;
    isnt $INC[-1], '.', 'no trailing dot in @INC during module load from base';
}

use lib 't/lib/blahblah';

1;
