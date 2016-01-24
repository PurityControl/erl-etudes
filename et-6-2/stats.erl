%% @author Purity Control
%% @vsn 0.1
%% @doc an implementation of getting the minimum value from a list
-module(stats).

-export([minimum/1, maximum/1, range/1]).

%% doc return the minimum in a list. Throws an error on the empty list
-spec(minimum(nonempty_list(any())) -> any()).
minimum([H | T]) ->
    minimum(T, H).

minimum([H | T], Min) when H < Min ->
    minimum(T, H);
minimum([_H | T], Min) ->
    minimum(T, Min);
minimum([], Min) ->
    Min.

%% doc return the maximum in a list. Throws an error on the empty list
-spec(maximum(nonempty_list(any())) -> any()).
maximum([H | T]) ->
    maximum(T, H).

maximum([H | T], Max) when H > Max ->
    maximum(T, H);
maximum([_H | T], Max) ->
    maximum(T, Max);
maximum([], Max) ->
    Max.

%% doc return the minimum and maximum in a list.
%% Throws an error on the empty list
-spec(range(nonempty_list(any())) -> list(any())).
range([H | T]) ->
    range(T, [H, H]).

range([H | T], [Min, Max]) when H < Min ->
    range(T, [H, Max]);
range([H | T], [Min, Max]) when H > Max ->
    range(T, [Min, H]);
range([_H | T], [Min, Max]) ->
    range(T, [Min, Max]);
range([], Results) ->
    Results.




