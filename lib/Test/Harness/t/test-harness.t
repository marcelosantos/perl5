#!/usr/bin/perl -w

BEGIN {
    if( $ENV{PERL_CORE} ) {
        chdir 't';
        @INC = ('../lib', 'lib');
    }
    else {
        unshift @INC, 't/lib';
    }
}

my $SAMPLE_TESTS = $ENV{PERL_CORE} ? "lib/sample-tests" : "t/sample-tests";

use strict;

# For shutting up Test::Harness.
# Has to work on 5.004 which doesn't have Tie::StdHandle.
package My::Dev::Null;

sub WRITE  {}
sub PRINT  {}
sub PRINTF {}
sub TIEHANDLE {
    my $class = shift;
    my $fh    = do { local *HANDLE;  \*HANDLE };
    return bless $fh, $class;
}
sub READ {}
sub READLINE {}
sub GETC {}


package main;

use Test::More;

my $IsVMS = $^O eq 'VMS';

# VMS uses native, not POSIX, exit codes.
my $die_estat = $IsVMS ? 44 : 1;
my $die_wstat = $IsVMS ? 1024 : 256;

my %samples = (
            simple            => {
                                  total => {
                                            bonus      => 0,
                                            max        => 5,
                                            'ok'       => 5,
                                            files      => 1,
                                            bad        => 0,
                                            good       => 1,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },
            simple_fail      => {
                                 total => {
                                           bonus       => 0,
                                           max         => 5,
                                           'ok'        => 3,
                                           files       => 1,
                                           bad         => 1,
                                           good        => 0,
                                           tests       => 1,
                                           sub_skipped => 0,
                                           'todo'      => 0,
                                           skipped     => 0,
                                          },
                                 failed => {
                                            canon      => '2 5',
                                           },
                                 all_ok => 0,
                                },
            descriptive       => {
                                  total => {
                                            bonus      => 0,
                                            max        => 5,
                                            'ok'       => 5,
                                            files      => 1,
                                            bad        => 0,
                                            good       => 1,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },
            no_nums           => {
                                  total => {
                                            bonus      => 0,
                                            max        => 5,
                                            'ok'       => 4,
                                            files      => 1,
                                            bad        => 1,
                                            good       => 0,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => {
                                             canon     => '3',
                                            },
                                  all_ok => 0,
                                 },
            'todo'            => {
                                  total => {
                                            bonus      => 1,
                                            max        => 5,
                                            'ok'       => 5,
                                            files      => 1,
                                            bad        => 0,
                                            good       => 1,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 2,
                                            skipped    => 0,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },
            todo_inline       => {
                                  total => {
                                            bonus       => 1,
                                            max         => 3,
                                            'ok'        => 3,
                                            files       => 1,
                                            bad         => 0,
                                            good        => 1,
                                            tests       => 1,
                                            sub_skipped => 0,
                                            'todo'      => 2,
                                            skipped     => 0,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },
            'skip'            => {
                                  total => {
                                            bonus      => 0,
                                            max        => 5,
                                            'ok'       => 5,
                                            files      => 1,
                                            bad        => 0,
                                            good       => 1,
                                            tests      => 1,
                                            sub_skipped=> 1,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },
            bailout           => 0,
            combined          => {
                                  total => {
                                            bonus      => 1,
                                            max        => 10,
                                            'ok'       => 8,
                                            files      => 1,
                                            bad        => 1,
                                            good       => 0,
                                            tests      => 1,
                                            sub_skipped=> 1,
                                            'todo'     => 2,
                                            skipped    => 0
                                           },
                                  failed => {
                                             canon     => '3 9',
                                            },
                                  all_ok => 0,
                                 },
            duplicates        => {
                                  total => {
                                            bonus      => 0,
                                            max        => 10,
                                            'ok'       => 11,
                                            files      => 1,
                                            bad        => 1,
                                            good       => 0,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => {
                                             canon     => '??',
                                            },
                                  all_ok => 0,
                                 },
            head_end          => {
                                  total => {
                                            bonus      => 0,
                                            max        => 4,
                                            'ok'       => 4,
                                            files      => 1,
                                            bad        => 0,
                                            good       => 1,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },
            head_fail         => {
                                  total => {
                                            bonus      => 0,
                                            max        => 4,
                                            'ok'       => 3,
                                            files      => 1,
                                            bad        => 1,
                                            good       => 0,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => {
                                             canon      => '2',
                                            },
                                  all_ok => 0,
                                 },
            skip_all          => {
                                  total => {
                                            bonus      => 0,
                                            max        => 0,
                                            'ok'       => 0,
                                            files      => 1,
                                            bad        => 0,
                                            good       => 1,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 1,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },
            with_comments     => {
                                  total => {
                                            bonus      => 2,
                                            max        => 5,
                                            'ok'       => 5,
                                            files      => 1,
                                            bad        => 0,
                                            good       => 1,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 4,
                                            skipped    => 0,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },
            taint             => {
                                  total => {
                                            bonus      => 0,
                                            max        => 1,
                                            'ok'       => 1,
                                            files      => 1,
                                            bad        => 0,
                                            good       => 1,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => { },
                                  all_ok => 1,
                                 },

            'die'             => {
                                  total => {
                                            bonus      => 0,
                                            max        => 0,
                                            'ok'       => 0,
                                            files      => 1,
                                            bad        => 1,
                                            good       => 0,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => {
                                             estat      => $die_estat,
                                             wstat      => $die_wstat,
                                             max        => '??',
                                             failed     => '??',
                                             canon      => '??',
                                            },
                                  all_ok => 0,
                                 },

            die_head_end      => {
                                  total => {
                                            bonus      => 0,
                                            max        => 0,
                                            'ok'       => 4,
                                            files      => 1,
                                            bad        => 1,
                                            good       => 0,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => {
                                             estat      => $die_estat,
                                             wstat      => $die_wstat,
                                             max        => '??',
                                             failed     => '??',
                                             canon      => '??',
                                            },
                                  all_ok => 0,
                                 },

            die_last_minute   => {
                                  total => {
                                            bonus      => 0,
                                            max        => 4,
                                            'ok'       => 4,
                                            files      => 1,
                                            bad        => 1,
                                            good       => 0,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => {
                                             estat      => $die_estat,
                                             wstat      => $die_wstat,
                                             max        => 4,
                                             failed     => 0,
                                             canon      => '??',
                                            },
                                  all_ok => 0,
                                 },
            bignum            => {
                                  total => {
                                            bonus      => 0,
                                            max        => 2,
                                            'ok'       => 4,
                                            files      => 1,
                                            bad        => 1,
                                            good       => 0,
                                            tests      => 1,
                                            sub_skipped=> 0,
                                            'todo'     => 0,
                                            skipped    => 0,
                                           },
                                  failed => {
                                             canon      => '??',
                                            },
                                  all_ok => 0,
                                 },
           );

plan tests => (keys(%samples) * 4) + 1;

use Test::Harness;
use_ok('Test::Harness');


tie *NULL, 'My::Dev::Null' or die $!;

while (my($test, $expect) = each %samples) {
    # _run_all_tests() runs the tests but skips the formatting.
    my($totals, $failed);
    eval {
        select NULL;    # _run_all_tests() isn't as quiet as it should be.
        ($totals, $failed) = 
          Test::Harness::_run_all_tests("$SAMPLE_TESTS/$test");
    };
    select STDOUT;

    unless( $@ ) {
        is( Test::Harness::_all_ok($totals), $expect->{all_ok},    
                                                      "$test - all ok" );
        ok( defined $expect->{total},                 "$test - has total" );
        is_deeply( {map { $_=>$totals->{$_} } keys %{$expect->{total}}},
                   $expect->{total},
                                                         "$test - totals" );
        is_deeply( {map { $_=>$failed->{"$SAMPLE_TESTS/$test"}{$_} }
                        keys %{$expect->{failed}}},
                   $expect->{failed},
                                                         "$test - failed" );
    }
    else {      # special case for bailout
        is( $test, 'bailout' );
        like( $@, '/Further testing stopped: GERONI/i', $test );
        pass( 'skipping for bailout' );
        pass( 'skipping for bailout' );
    }
}
