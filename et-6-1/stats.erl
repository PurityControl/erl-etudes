-module(stats).

-export([minimum/1]).

minimum([H | T]) ->
    minimum(T, H).

minimum([H | T], Min) when H < Min ->
    minimum(T, H);
minimum([_H | T], Min) ->
    minimum(T, Min);
minimum([], Min) ->
    Min.




