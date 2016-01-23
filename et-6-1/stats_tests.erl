-module(stats_tests).

-include_lib("eunit/include/eunit.hrl").

empty_list_test() ->
    ?assertError(_, stats:minimum([])).

single_item_test() ->
    ?assertEqual(2, stats:minimum([2, 5])),
    ?assertEqual(2, stats:minimum([5, 2])).

many_items_different_locations_test() ->
    ?assertEqual(1, stats:minimum([1, 2, 3, 4, 5, 6, 7, 8])),
    ?assertEqual(1, stats:minimum([8, 7, 6, 5, 4, 3, 2, 1])),
    ?assertEqual(1, stats:minimum([2, 8, 7, 3, 1, 9, 4, 6, 5])).

list_with_negatives_test() ->
    ?assertEqual(-5, stats:minimum([-3, 2, -5, 6, -1, 8])).

