def isDivisible(number):
  i = 11
  while (i <= 20):
    if (number % i != 0):
      return False

    i += 1

  return True

def findSmallestNumber():
  number = 2520

  while (True):
    number += 2520

    if (isDivisible(number) == True):
      break

  return number

print findSmallestNumber()
