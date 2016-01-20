-module(ask_area).

-export([area/0]).

area() ->
    Shape = ask_shape(),
    Width = ask_number("Enter width"),
    Height = ask_number("Enter height"),
    geom:area(Shape, Width, Height).

ask_shape() ->
    Response = io:get_line("R)ectangle, T)riangle, or E)llipse >"),
    Trimmed = string:strip(Response, right, $\n),
    case Trimmed of 
       "R" -> rectangle;
       "T" -> triangle;
       "E" -> ellipse;
        _ -> ask_shape()
    end.

ask_number(Prompt) ->
    Number = io:get_line(Prompt),
    string_to_number(string:strip(Number, right, $\n)).

string_to_number(Number) ->
    string_to_number(Number, Number).


string_to_number(Number, [$. | _Tail]) ->
    try list_to_float(Number)
    catch error:_ -> io:format("Bad Number")
    end;
string_to_number(Number, []) ->
    try list_to_integer(Number)
    catch error:_ -> io:format("Bad Number")
    end;
string_to_number(Number, [_H | T]) ->
    string_to_number(Number, T).



    
