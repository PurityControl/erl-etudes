-module(teeth).

-export([alert/1]).

-spec(alert(list(integer)) -> list(integer)).

alert(PocketDepths) ->
    alert(PocketDepths, 1, []).

alert([H|T], ToothPos, Acc) -> 
    case lists:max(H) >= 4 of
        true ->
            alert(T, ToothPos + 1, [ToothPos|Acc]);
        false ->
            alert(T, ToothPos + 1, Acc)
    end;
alert([], _ToothPos, Acc) ->
    lists:reverse(Acc).
