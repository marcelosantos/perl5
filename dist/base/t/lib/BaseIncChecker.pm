package BaseIncChecker;

BEGIN { package main;
    isnt $INC[-1], '.', 'no trailing dot in @INC during module load from base';
}

1;
