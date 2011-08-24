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
