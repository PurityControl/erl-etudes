-module(powers).

-export([raise/2]).

raise(_, 0) ->
    1;
raise(Product, 1) ->
    Product;
raise(Product, Exponent) when Exponent > 0 ->
    Product * raise(Product, Exponent - 1);
raise(Product, Exponent) when Exponent < 0 ->
    1 / raise(Product, -Exponent).
