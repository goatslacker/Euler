const fibup = function (a, b, sum) {
  const n = a + b;

  if (n >= 4e6) {
    return sum;
  } else {
    if (n % 2 === 0) {
      sum += n;
    }
    return fibup(b, n, sum);
  }
};

console.log(fibup(0, 1, 0));
