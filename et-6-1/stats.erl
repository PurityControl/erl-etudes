%% @author Purity Control
%% @vsn 0.1
%% @doc an implementation of getting the minimum value from a list
-module(stats).

-export([minimum/1]).

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




