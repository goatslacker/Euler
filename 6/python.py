from math import pow

def sumOfSquares(max):
  n = 0
  i = 1
  while (i <= max):
    n += pow(i, 2)
    i += 1

  return n

def squareOfSums(max):
  n = 0
  i = 1
  while (i <= max):
    n += i
    i += 1

  return pow(n, 2)

print squareOfSums(100) - sumOfSquares(100)
