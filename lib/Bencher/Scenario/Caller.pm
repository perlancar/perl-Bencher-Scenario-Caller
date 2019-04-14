package Bencher::Scenario::Caller;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark some variations of caller()',
    participants => [
        {
            name => 'CORE::caller() (scalar)',
            code_template => 'CORE::caller()',
        },
        {
            name => 'CORE::caller() (list)',
            code_template => 'CORE::caller()',
            result_is_list => 1,
        },
        {
            name => 'CORE::caller(0)',
            code_template => 'CORE::caller(0)',
            result_is_list => 1,
        },
        {
            name => 'CORE::caller(1)',
            code_template => 'CORE::caller(1)',
            result_is_list => 1,
        },
        {
            name => 'CORE::caller(2)',
            code_template => 'CORE::caller(2)',
            result_is_list => 1,
        },

        {
            name => 'Devel::Caller::Util::caller(0)',
            module => 'Devel::Caller::Util',
            code_template => 'Devel::Caller::Util::caller(0)',
            result_is_list => 1,
        },
        {
            name => 'Devel::Caller::Util::caller(1)',
            module => 'Devel::Caller::Util',
            code_template => 'Devel::Caller::Util::caller(1)',
            result_is_list => 1,
        },
        {
            name => 'Devel::Caller::Util::caller(2)',
            module => 'Devel::Caller::Util',
            code_template => 'Devel::Caller::Util::caller(2)',
            result_is_list => 1,
        },
        {
            name => 'Devel::Caller::Util::caller(0) with-args',
            module => 'Devel::Caller::Util',
            code_template => 'Devel::Caller::Util::caller(0, 1)',
            result_is_list => 1,
        },
        {
            name => 'Devel::Caller::Util::caller(0) with-packages-to-ignore=re',
            module => 'Devel::Caller::Util',
            code_template => 'Devel::Caller::Util::caller(0, 0, qr/^Bencher::Scenario$/)',
            result_is_list => 1,
        },
    ],
};

1;
# ABSTRACT:
