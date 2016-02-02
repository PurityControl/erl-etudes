-module(dates).

-export([date_parts/1, julian/1]).

-spec(date_parts(string()) -> list(integer)).

date_parts(Date) ->
    lists:map(fun(X) -> list_to_integer(X) end,
              re:split(Date, "-", [{return, list}])).

julian(Date) ->
    [Year, Months, Days] = date_parts(Date),
    julian(Year, Months, Days, days_list(Year), 0).

julian(_Year, 1, 0, _Days_list, Acc) ->
    Acc;
julian(Year, 1, Days, Days_list, Acc) ->
    julian(Year, 1, 0, Days_list, Acc + Days); 
julian(Year, Months, Days, [MonthDays | RestDays], Acc) ->
    julian(Year, Months - 1, Days, RestDays, Acc + MonthDays).

days_list(Year) ->
    case is_leap_year(Year) of
        true ->
            [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
        false ->
            [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    end.

is_leap_year(Year) ->
    (Year rem 4 == 0 andalso Year rem 100 /= 0)
        orelse (Year rem 400 == 0).
