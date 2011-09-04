import math

class Triangle:
  i = 1
  n = 0
  array = []

  def nextTriangleNumber(self):
    self.n = self.n + self.i
    self.array.append(self.n)
    self.i += 1
    return self.n

  def getTriangleNumbers(self, ceil):
    curLen = len(self.array)

    if (ceil > curLen):
      return self._retrieveNumbers(ceil)
    else:
      return self.array

  def _retrieveNumbers(self, ceil):
    i = len(self.array)
    while (i < ceil):
      self.nextTriangleNumber()
      i += 1

    return self.array


def getNumberOfFactors(Number, Additive):
  X = 20
  number_of_factors_i_found = 1

  Maximum_Range = math.floor(math.sqrt(Number))

  while (X <= Maximum_Range):
    #if the remainder of n divided by i is 0
    # then i is a factor of n
    if (Number % X == 0):
      number_of_factors_i_found += 1

    X += 1

  return (number_of_factors_i_found * 2) + Additive


def lotsOfFactors(n):
  i = 2
  a = 1

  if (n < 20):
    return 0

  while (i < 20):
    if (n % i == 0):
      a += 1

    i += 1

  return a


def solve():
  
  triangle = Triangle()

  while (True):
    n = triangle.nextTriangleNumber()
    hasLotsOfFactors = lotsOfFactors(n)
    if (hasLotsOfFactors > 15):
      numOfFactors = getNumberOfFactors(n, hasLotsOfFactors)
      if (numOfFactors > 500):
        return n

print solve()
