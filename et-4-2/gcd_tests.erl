-module(gcd_tests).

-include_lib("eunit/include/eunit.hrl").

responds_to_same_numbers_test() ->
  ?assertEqual(3, gcd:gcd(3, 3)).

first_number_smaller_test() ->
  ?assertEqual(7, gcd:gcd(14, 21)).

second_number_smaller_test() ->
  ?assertEqual(4, gcd:gcd(12, 8)),
  ?assertEqual(1, gcd:gcd(125, 46)),
  ?assertEqual(12, gcd:gcd(120, 36)).
