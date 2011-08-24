const isDivisible = function (number) {
  for (var i = 11; i <= 20; i += 1) {
    if (number % i !== 0) {
      return false;
    }
  }

  return true;
};

var number = 2520;

while (true) {
  number += 2520;

  if (isDivisible(number) === true) {
    break;
  }
}

console.log(number);
