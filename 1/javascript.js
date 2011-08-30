const findSumOfMultiples = function (range) {
  var multiple = [];

  for (var i = 1; i < range; i += 1) {
    if (i % 3 === 0 || i % 5 === 0) {
      multiple.push(i);
    }
  }

  return multiple.reduce(function (a, b) {
    return a + b;
  });

};

console.log(findSumOfMultiples(1000));
