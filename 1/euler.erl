-module(euler).

-export([getSumOfMultiples/0]).

isMultipleOf(Num, Mul) ->
  Result = if Num rem Mul == 0 -> true;
            true -> false
            end,
  Result.

isMultipleofFive(Num) ->
  isMultipleOf(Num, 5).

isMultipleofThree(Num) ->
  isMultipleOf(Num, 3).

isValidMultiple(Num) ->
  isMultipleofFive(Num) orelse isMultipleofThree(Num).

getMultiplesInRange(Max) ->
  [X || X <- lists:seq(1, Max), isValidMultiple(X) == true].

getSumOfMultiples() ->
  lists:sum(getMultiplesInRange(999)).

%oneLine() ->
%  lists:sum([X || X <- lists:seq(1, 999), isMultipleOf(X, 3) orelse isMultipleOf(X, 5)]).
