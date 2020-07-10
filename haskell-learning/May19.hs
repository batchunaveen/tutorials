import Data.List
import System.IO

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving Show


area :: Shape -> Float

area (Circle _ _ r) = pi * r ^ 2

area (Rectangle x y  x2 y2 ) = (abs $ x2-x ) * (abs $y2-y )

sumValue = putStrLn (show (1 + 2))

sumValue2 = putStrLn . show $ 1 + 2

areaOfCircle = area (Circle 50 60 20)
areaOfRect = area (Rectangle 10 10 100 100)

data ShirtSize = S | M | L

instance Eq ShirtSize where
    S == S = True
    M == M = True
    L == L = True
    _ == _ = False


instance Show ShirtSize where
    show S = "Small"
    show M = "Medium"
    show L = "Large"

smallAvail = S `elem` [S, M , L]

theSize = show S

sayHello = do
    putStrLn "What's your name"
    name <- getLine
    putStrLn $ "Hello "++ name


writeToFile = do
    theFile  <- openFile "test.txt" WriteMode
    hPutStrLn theFile ("Random line of text")
    hClose theFile

readFromFile = do
    theFile2 <- openFile "test.txt" ReadMode
    contents <- hGetContents theFile2
    putStr contents
    hClose theFile2


fib = 1 : 1 : [a + b |(a,b) <- zip fib (tail fib)]

fib300 = fib !! 300