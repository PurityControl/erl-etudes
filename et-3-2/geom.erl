%% @author PurityControl
%% @doc geometry module used for Erlang Etudes problems
%% @reference <a href="https://github.com/oreillymedia/etudes-for-erlang/blob/master/ch03-tuples-and-records.asciidoc">Chapter 3 Etudes</a>
%% @copyright 2015 PurityControl

-module(geom).
-export([area/1]).

%% @doc calculate the area of a rectangle, triangle or ellipse.
%% Does not allow negative numbers

-spec(area({rectangle | triangle | ellipse, number(), number()}) -> number()).

area({rectangle, Width, Height}) when Width >= 0, Height >= 0 ->
    Width * Height;
area({triangle, Width, Height}) when Width >= 0, Height >= 0 ->
    0.5 * Width * Height;
area({ellipse, Width, Height}) when Width >= 0, Height >= 0 ->
    math:pi() * Width * Height.


