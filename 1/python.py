def findSumOfMultiples(range):
  multiple = []
  i = 0

  while (i < range):
    if (i % 3 == 0 or i % 5 == 0):
      multiple.append(i)

    i += 1
    
  return sum(multiple)

print findSumOfMultiples(1000)
