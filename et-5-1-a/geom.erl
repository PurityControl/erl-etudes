%% @author PurityControl
%% @doc geometry module used for Erlang Etudes problems
%% @copyright 2015 PurityControl

-module(geom).
-export([start/0, loop/0]).

start() ->
    register(geom, spawn(geom, loop, [])).

loop() ->
    receive
        {area, Shape, Width, Height, From} ->
            From ! area(Shape, Width, Height),
            loop();
        stop ->
            ok
    end.
            

-spec(area(atom(), number(), number()) -> number()).

area(Shape, Width, Height) when Width >= 0, Height >= 0 ->
    case Shape of
        rectangle -> Width * Height;
        triangle -> 0.5 * Width * Height;
        ellipse -> math:pi() * Width * Height
    end.

