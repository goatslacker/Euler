const sumOfSquares = function (max) {
  var n = 0;
  for (var i = 1; i <= max; i += 1) {
    n += Math.pow(i, 2);
  }
  return n;
};

const squareOfSums = function (max) {
  var n = 0;
  for (var i = 1; i <= max; i += 1) {
    n += i;
  }
  return Math.pow(n, 2);
};

console.log(squareOfSums(100) - sumOfSquares(100));
