def fibup (a, b):
  sum = 0

  c = 0;

  while (c <= 4000000):
    c = a + b
    a = b
    b = c

    if (c % 2 == 0):
      sum += c

  return sum

print fibup(0, 1)
