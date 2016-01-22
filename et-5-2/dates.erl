-module(dates).

-export([date_parts/1]).

-spec(date_parts(string()) -> list(integer)).

date_parts(Date) ->
    lists:map(fun(X) -> list_to_integer(X) end,
              re:split(Date, "-", [{return, list}])).
