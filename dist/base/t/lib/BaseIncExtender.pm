package BaseIncExtender;

BEGIN { package main;
    is $INC[-1], '.', 'trailing dot remains in @INC during optional module load from base';
    is 0+(grep ref eq 'CODE', @INC), 3, '... but the expected extra hooks';
}

use lib 't/lib/blahblah';

1;
