package BaseIncDoubleExtender;

BEGIN { package main;
    isnt $INC[-1], '.', 'no trailing dot in @INC during module load from base';
}

use lib 't/lib/blahdeblah';

push @INC, 't/lib/on-end';

1;
