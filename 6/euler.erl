-module(euler).

-export([sumOfSquares/1, squareOfSums/1, getDifference/2]).

sumOfSquares(Range) ->
  lists:sum([X * X || X <- lists:seq(1, Range)]).

squareOfSums(Range) ->
  Num = lists:sum([X || X <- lists:seq(1, Range)]),
  Num * Num.

getDifference(A, B) ->
  A - B.
