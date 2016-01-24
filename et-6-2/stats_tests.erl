-module(stats_tests).

-include_lib("eunit/include/eunit.hrl").

empty_list_test() ->
    ?assertError(_, stats:minimum([])),
    ?assertError(_, stats:maximum([])),
    ?assertError(_, stats:range([])).

single_item_test() ->
    ?assertEqual(2, stats:minimum([2])),
    ?assertEqual(2, stats:maximum([2])),
    ?assertEqual([2, 2], stats:range([2])).

two_item_test() ->
    ?assertEqual(2, stats:minimum([2, 5])),
    ?assertEqual(2, stats:minimum([5, 2])),
    ?assertEqual(5, stats:maximum([2, 5])),
    ?assertEqual(5, stats:maximum([5, 2])),
    ?assertEqual([2, 5], stats:range([2, 5])),
    ?assertEqual([2, 5], stats:range([5, 2])).

many_items_different_locations_test() ->
    ?assertEqual(1, stats:minimum([1, 2, 3, 4, 5, 6, 7, 8])),
    ?assertEqual(1, stats:minimum([8, 7, 6, 5, 4, 3, 2, 1])),
    ?assertEqual(1, stats:minimum([2, 8, 7, 3, 1, 9, 4, 6, 5])),
    ?assertEqual(8, stats:maximum([1, 2, 3, 4, 5, 6, 7, 8])),
    ?assertEqual(8, stats:maximum([8, 7, 6, 5, 4, 3, 2, 1])),
    ?assertEqual(9, stats:maximum([2, 8, 7, 3, 1, 9, 4, 6, 5])),
    ?assertEqual([1, 8], stats:range([1, 2, 3, 4, 5, 6, 7, 8])),
    ?assertEqual([1, 8], stats:range([8, 7, 6, 5, 4, 3, 2, 1])),
    ?assertEqual([1, 9], stats:range([2, 8, 7, 3, 1, 9, 4, 6, 5])).

list_with_negatives_test() ->
    ?assertEqual(-5, stats:minimum([-3, 2, -5, 6, -1, 8])),
    ?assertEqual(8, stats:maximum([-3, 2, -5, 6, -1, 8])),
    ?assertEqual([-5, 8], stats:range([-3, 2, -5, 6, -1, 8])).

