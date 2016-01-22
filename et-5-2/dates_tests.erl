-module(dates_tests).

-include_lib("eunit/include/eunit.hrl").

parse_date_test() ->
    ?assertEqual([2014, 31, 12], dates:date_parts("2014-31-12")).
