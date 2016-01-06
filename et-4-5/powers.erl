-module(powers).

-export([raise/2, nth_root/2]).

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

nth_root(X, N) ->
    nth_root(X, N, X / 2.0).

nth_root(X, N, Approx) ->
    F = raise(Approx, N) - X,
    Fprime = N * raise(Approx, N - 1),
    Next = Approx - (F / Fprime),
    Change = abs(Next - Approx),
    if 
        Change > 1.0e-8 ->
            nth_root(X, N, Next);
        true ->
            Next
    end.
