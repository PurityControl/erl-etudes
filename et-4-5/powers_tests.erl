-module(powers_tests).

-include_lib("eunit/include/eunit.hrl").

base_case_test() ->
    ?assertEqual(5, powers:raise(5, 1)).

raise_to_zero_test() ->
    ?assertEqual(1, powers:raise(2, 0)).

positive_power_test() ->
    ?assertEqual(8, powers:raise(2, 3)).

negative_power_test() ->
    ?assertEqual(0.125, powers:raise(2, -3)).

float_power_test() ->
    ?assertEqual(1.728, powers:raise(1.2, 3)).

nth_root_test() ->
    ?assertEqual(3.0, powers:nth_root(27, 3)).

