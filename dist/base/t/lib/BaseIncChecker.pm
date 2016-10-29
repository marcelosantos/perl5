package BaseIncChecker;

BEGIN { package main;
    isnt $INC[-1], '.', 'no trailing dot in @INC during module load from base';
    is 0+(grep ref eq 'CODE', @INC), 2, '... but the expected dummy hook';
}

1;
