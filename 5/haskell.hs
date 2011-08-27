divByRange num range = length [x | x <- [1..range], num `mod` x == 0]

main = head [x | x <- [2520, 5040..], divByRange x 20 == 20]
