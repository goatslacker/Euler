const isPrime = function (n) {
  for (var i = 2; i * i < n; i += 1) {
    if (n % i === 0 && n !== i) {
      return false;
    }
  }
  return true;
};

const isPrimeFactor = function (n, base) {
  return (base % n === 0);
};

const getLargestPrimeFactorOf = function (number) {
  var largest = 0;
  for (var i = 2; i * i < number; i += 1) {
    if (isPrime(i) && isPrimeFactor(i, number)) {
      largest = i;
    }
  }
  return largest;
};

console.log(getLargestPrimeFactorOf(600851475143));
