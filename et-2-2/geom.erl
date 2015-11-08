%% @author PurityControl
%% @doc module for chapter 2 of Etudes for Erlang
%% @reference <a href="https://github.com/oreillymedia/etudes-for-erlang/blob/master/ch02-functions_and_modules.asciidoc">Chapter 2 Etudes</a>
%% @copyright 2015 Purity Control

-module(geom).
-export([area/2]).

%% @doc calculate the area of a rectangle given its length and width.

-spec(area(number(), number()) -> number()).

area(Length, Width) ->
    Length * Width.
