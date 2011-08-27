-- I'm such a Haskell n00b. This program runs much slower than it's JavaScript translation.
-- I know it's a case of I'm doing it wrong. I'd like to find the right path to englightenment and Haskell glory.

-- Seems like running it in ghci is a bad idea. Compile it, duh!
-- Although I'm sure I can make better use of lists in this case anyways

increment :: Int -> Int -> Int -> Int
increment number i range = if number `mod` i == 0
                            then divideByRange number (i + 1) range
                            else divideByRange (number + 2520) 1 range

divideByRange :: Int -> Int -> Int -> Int
divideByRange number i range = if i == range
                                then number
                                else increment number i range

findSmallest :: Int -> Int -> Int
findSmallest number range = divideByRange number 1 range

main = print (findSmallest 2520 20)
