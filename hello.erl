-module(hello).
-export([start/0]).

start() ->
   spawn(fun() -> loop() end).

loop() ->
   receive
      hello ->
         io:format("Hello, World!~n"),
         loop();

      goodbye ->
         ok
   end.
