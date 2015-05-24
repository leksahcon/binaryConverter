--This program will convert decimal numbers binary

intList :: Integer -> [Integer]
intList x = [x `div`(10^y)| y <- [1000,999..0]]

intList2 :: Integer -> [Integer]
intList2 x = [x | x <- (intList x), x /=0]

toDigits :: Integer -> [Integer]
toDigits 0 = [0]
toDigits x = [x `mod` 10 | x <- (intList2 x)]

