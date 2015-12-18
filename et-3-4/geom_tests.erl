-module(geom_tests).

-include_lib("eunit/include/eunit.hrl").
 
responds_to_rectangle_test() ->
  ?assertEqual(12, geom:area({rectangle, 3, 4})).
 
responds_to_triangle_test() ->
  ?assertEqual(10.5, geom:area({triangle, 7, 3})).
 
responds_to_ellipse_test() ->
  ?assertEqual(65.97344572538566, geom:area({ellipse, 7, 3})).

responds_to_non_matched_patterns_test() ->
  ?assertEqual(0, geom:area({pentagon, 3, -4})),
  ?assertEqual(0, geom:area({hexagon, -3, 4})),
  ?assertEqual(0, geom:area({rectangle, 3, -4})).
