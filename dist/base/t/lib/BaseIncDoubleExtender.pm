package BaseIncDoubleExtender;

BEGIN { package main;
    is $INC[-1], '.', 'trailing dot remains in @INC during optional module load from base';
    is 0+(grep ref eq 'CODE', @INC), 3, '... but the expected extra hooks';
}

use lib 't/lib/blahdeblah';

push @INC, 't/lib/on-end';

1;
