%%%-------------------------------------------------------------------
%% @doc app2 public API
%% @end
%%%-------------------------------------------------------------------

-module(app2_app).

-behaviour(application).

-export([start/2, stop/1]).

-ifdef(PROD).
-define(V1, prod).
-else.
-define(V1, noprod).
-endif.

start(_StartType, _StartArgs) ->
    io:format("app2 >>> ~p~n", [?V1]),
    app2_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
