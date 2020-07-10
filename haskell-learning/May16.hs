import Data.List
import System.IO 

primeNumbers = [3,5,7,11]
morePrimes = primeNumbers ++ [13,17,19,23,29]
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
sortedLists = sort [9,1,8,3,4,7,6]
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
listBiggerThen5 = filter (>5) morePrimes 
evensUpTo20 = takeWhile (<=20) [2,4..]
multOfList = foldl (*) 1 [2,3,4,5]
multOfListR = foldr (*) 1 [2,3,4,5]
pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x<- [1..10]]