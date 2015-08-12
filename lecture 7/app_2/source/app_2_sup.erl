-module(app_2_sup).
-export([start_link/0, init/1]).
-behaviour(supervisor).
start_link() ->
  supervisor:start_link(app_2_sup, []).
init(_Args) ->
  {ok, {{one_for_one, 1, 5}, [{looper, {app_2_child, start_loop, []}, permanent, 5000, worker,[app_2_child]}]}}.