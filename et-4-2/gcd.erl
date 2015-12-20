%% @author PurityControl
%% @doc gcd module used for Erlang Etudes problems
%% @copyright 2015 PurityControl

-module(gcd).
-export([gcd/2]).

%% @doc calculate the area of a rectangle, triangle or ellipse.

-spec(gcd(integer(), integer()) -> integer()).

gcd(Int1, Int1) ->
    Int1;
gcd(Int1, Int2) ->
    if 
        Int1 > Int2 -> gcd(Int1 - Int2, Int2);
        true  -> gcd(Int1, Int2 - Int1)
    end.



