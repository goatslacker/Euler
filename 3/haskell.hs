-- Used to check if it's a prime || primefactor
-- loop is the loop callback
-- end is the callback for else
iterator num i loop end = if i * i < num
                                then loop
                                else end

checkPrime num i = iterator num i (canBePrime num i) True

canBePrime num i = if num `mod` i == 0 && num /= i
                  then False
                  else checkPrime num (i + 1)

-- Bool
isPrime num = canBePrime num 2

-- Bool
isPrimeFactor num base = if base `mod` num == 0
                          then True
                          else False

-- Bool
isPrimeAndPrimeFactor num base = if isPrime num == True && isPrimeFactor num base == True
                                  then True
                                  else False

findPrimeFactors num i largest = if isPrimeAndPrimeFactor i num == True
                                  then getLargestPrimeFactor num (i + 1) i
                                  else getLargestPrimeFactor num (i + 1) largest

getLargestPrimeFactor num i largest = iterator num i (findPrimeFactors num i largest) largest

getLargestPrimeFactorOf num = getLargestPrimeFactor num 2 0

-- getLargestPrimeFactorOf 600851475143
