--This program will convert decimal numbers binary

intList :: Integer -> [Integer]
intList x = [x `div`(2^y)| y <- [1000,999..0]]

intList2 :: Integer -> [Integer]
intList2 x = [x | x <- (intList x), x /=0]

decToBin :: Integer -> [Integer]
decToBin 0 = [0]
decToBin x = [x `mod` 2 | x <- (intList2 x)]

