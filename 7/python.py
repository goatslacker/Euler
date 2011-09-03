def isPrime(n):

  i = 2

  while ((i * i) <= n):
    if (n % i == 0 and n != i):
      return False

    i += 1

  return True

def findPrime(n):
  c = 1
  i = 0

  while (i < n):
    c += 1

    if (isPrime(c) == True):
      i += 1


  return c

print findPrime(10001)
