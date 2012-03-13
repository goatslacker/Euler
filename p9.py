import math

def sqr(a, b):
  return (a * a) + (b * b)

def isPythagoreanTriplet(a, b, c):
  return sqr(a, b) == (c * c)

def findMe(mx):
  a = 1
  b = 1
  c = mx

  while (a < mx):
    b = 1

    while (b < mx):
      c = mx - (a + b)

      if (isPythagoreanTriplet(a, b, c)):
        return a * b * c

      b += 1

    a += 1

print findMe(1000)
