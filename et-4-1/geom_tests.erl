-module(geom_tests).

-include_lib("eunit/include/eunit.hrl").

responds_to_rectangle_test() ->
  ?assertEqual(12, geom:area(rectangle, 3, 4)).

erro_for_non_matched_patterns_test() ->
  ?assertException(error, function_clause, geom:area(pentagon, 3, -4)),
  ?assertException(error, function_clause, geom:area(hexagon, -3, 4)),
  ?assertException(error, function_clause, geom:area(rectangle, 3, -4)).
