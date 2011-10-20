var Palindrome = function (digits) {

  var initX = Math.pow(10, digits) - 1
    , initY = Math.floor(initX / 11) * 11
    , x = initX
    , y = initY
    , digits = initX.toString().length
    , diff = Math.pow(10, (digits - 1))
    , threshold = initY - diff
    , palindrome = false;

  var isPalindromic = function (x, y) {
    var orig = (x * y).toString();
    return orig.split("").reverse().join("") === orig;
  };

  while (palindrome === false) {

    x = x - 1;

    if (x <= diff) {
      x = initX;
      initY = initY - Math.ceil(initX / 10);
      threshold = initY - diff;
    }

    for (y = initY; y > threshold; y = y - 11) {
      if (isPalindromic(x, y) === true) {
        palindrome = true;
        break;
      }
    }

    if (palindrome === true) {
      return (x * y);
    }
  }

};

console.log(Palindrome(3));
