-module(app_2_child).
-export([start_loop/0]).

start_loop()->
    io:format("Starting child loop with pid ~p ~n", [self()]),
    loop().

loop()->
    receive
        Message ->
            io:format("message received: ~p ~n", [Message]),
            loop()
    after 3000 ->
        exit(timeout),
        ok
    end.