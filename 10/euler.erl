-module(euler).

-export([getSumOfPrimes/1]).

% gets a list range from 1..sqrt
getRange(Num) ->
  lists:seq(1, round(math:sqrt(Num)-0.5)).

% gets multiples up to a certain extent
getFactors(Num) ->
  [X || X <- getRange(Num), Num rem X == 0].

% bool. is number prime || not
isPrime(Num) ->
  Length = length(getFactors(Num)),
  Result = if Length > 1 -> false;
              true -> true
            end,
  Result.

% get primes get's all the prime numbers
getSumOfPrimes(Max) ->
  lists:sum([X || X <- lists:seq(2, Max), isPrime(X) == true]).
