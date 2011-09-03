-module(euler).

-export([getLargestPrimeFactor/1]).

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
getPrimes(Num) ->
  [X || X <- getRange(Num), isPrime(X) == true].

% bool. if it's a prime factor || not
isPrimeFactor(Num, Base) ->
  Result = if Base rem Num == 0 -> true;
              true -> false
            end,
  Result.

% returns all prime factors in a list
getPrimeFactors(Num) ->
  [X || X <- getPrimes(Num), isPrimeFactor(X, Num) == true].

% returns the largest prime factor for a number
getLargestPrimeFactor(Num) ->
  PrimeFactors = getPrimeFactors(Num),
  lists:last(PrimeFactors).
