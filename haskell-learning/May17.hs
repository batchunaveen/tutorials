import Data.List
import System.IO

times4 :: Int -> Int
times4 x = x * 4
listTimes4 = map times4 [1,2,3,4,5]
multiBy4 :: [Int] -> [Int]
multiBy4 [] = []
multiBy4 (x: xs) = times4 x : multiBy4 xs

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x: xs) (y: ys ) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

--pass functions into functions
doMult :: (Int -> Int) -> Int
doMult func = func 3
num3Times4 = doMult times4
--return functions into functions
getAddFunc :: Int -> (Int-> Int)
getAddFunc x y = x + y
adds3 = getAddFunc 3
fourPlus3 = adds3 4
threePlusList = map adds3 [1,2,3,4,5]
--Lambdas
dbl1To10 = map (\x -> x * 2) [1..10]
--conditional < , > >=,  ==,  /=
--logical operators && || not
--if statements
doubleEvenNumber y =
    if (y `mod` 2/= 0)
    then y
    else y * 2

getClass :: Int -> String

getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elemantary school"
    _ -> "Go to colleage"

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                  deriving Show
barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

barryInOF = print(barryBonds Outfield)

data Customer = Customer String String Double
                  deriving Show

tomSmith :: Customer
tomSmith = Customer "Tom Smith " "123 Main" 20.50

getBalance :: Customer -> Double

getBalance (Customer _ _ b) = b

data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beats Paper"
shoot Scissors Rock = "Scissors Loses to Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"

