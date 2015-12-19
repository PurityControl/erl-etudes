%% @author PurityControl
%% @doc geometry module used for Erlang Etudes problems
%% @copyright 2015 PurityControl

-module(geom).
-export([area/3]).

%% @doc calculate the area of a rectangle, triangle or ellipse.
%% Does not allow negative numbers

-spec(area(atom(), number(), number()) -> number()).

area(Shape, Width, Height) when Width >= 0, Height >= 0 ->
    case Shape of
        rectangle -> Width * Height;
        triangle -> 0.5 * Width * Height;
        ellipse -> math:pi() * Width * Height
    end.

