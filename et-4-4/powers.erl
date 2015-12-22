-module(powers).

-export([raise/2]).

raise(_, 0) ->
    1;
raise(Product, Exponent) when Exponent > 0 ->
    raise(Product, Exponent, 1);
raise(Product, Exponent) when Exponent < 0 ->
    1 / raise(Product, -Exponent, 1).

raise(_Product, 0, Acc) ->
    Acc;
raise(Product, Exponent, Acc) ->
    raise(Product, Exponent - 1, Acc * Product).
