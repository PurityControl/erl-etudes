-module(dates_tests).

-include_lib("eunit/include/eunit.hrl").

parse_date_test() ->
    ?assertEqual([2014, 31, 12], dates:date_parts("2014-31-12")).

calculate_days_test() ->
    ?assertEqual(366, dates:julian("2012-12-31")),
    ?assertEqual(365, dates:julian("2013-12-31")),
    ?assertEqual(36, dates:julian("2012-02-05")),
    ?assertEqual(36, dates:julian("2013-02-05")),
    ?assertEqual(60, dates:julian("1900-03-01")),
    ?assertEqual(61, dates:julian("2000-03-01")),
    ?assertEqual(1, dates:julian("2013-01-01")).

