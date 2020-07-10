# haskell-learning
Learning  Hashkell


run this code inside terminal 
    :l May15 
    :r 
    addEx --print the output

## Table of Contents 
1.  [DataTypes](#datatypes)
2.  [Built in math Functions](#bulit-in-math-functions)
3.  [Tuples](#tuples)
4.  [Functions](#functions)
5.  [Recursions](#recursions)
6.  [Guards](#guards)
7.  [Lists](#lists)
8.  [Higher Order Functions](#higher-order-functions)
9.  [Lambdas](#lambdas)
10. [Enumaration Types](#enumaration-types)
11. [Custom Types](#custom-types)
12. [How to check a function in terminal](#how-to-check-a-function-in-terminal)




## DataTypes 
  Int - Max 2^63 2^63

--Integer unbound whole number 
--Float , Double 
    bigFloat  = 300000 + 0.000005
-- Bool true or Flase
--char 
--Tuples we have two values 

     addEx = 5 + 5
     sub = 5-3
     multi = 5 * 5 
     divide = 5/5
     modEx = mod 5 4 
     modEx2  = 5 `mod` 4 --infix operator 
     num9 = 9 :: Int 
     sqrOf9 = sqrt(fromIntegral num9)

## Bulit in math Functions 

    piVal = pi 
    sqaureOf9 = 9 ** 2 
    logOf9 = log 9 
    tuncateVal = truncate 9.99
    roundVal = round 9.99
    ceilingVal = ceiling 9.99
    floorVal = floor 9.99


----Also sin, cos, tan, asin, atan, acos, sinh, tanh, cosh, asinh, atanh, acosh

    cosVal = cos(fromIntegral 10)
    tanVal = tan(fromIntegral 10)sinVal sin(fromIntegral 10)

    trueAndFalse = True && False
    trueOrFalse = True || False
    notTrue = not(True)

##  Math Functions
    sumOfNums = sum [1..1000]

    primeNumbers = [3,5,7,11]
    morePrime = primeNumbers ++ [13, 17,19,23,29]

    output: [3,5,7,11,13,17,19,23,29]

    favNums = 2 : 7 : 21 : 66 : []

    output: [2,7,21,66]

    this is to add to list using : 

    multiList = [[3,5,7], [11,13,17]]
    primeNumbers  = [3,5,7,11]
    morePrimes = primeNumbers ++ [13,17,19,23,29]
    morePrimes2 = 2 : morePrimes
    lenPrime = length morePrimes2 
    isListEmpty = null morePrimes2
    lastPrime = last morePrimes2
    firstPrime = head morePrimes2 

    is7InList = 7 `elem` morePrimes2
    maxPrime = maximum morePrimes2
    minPrime = minimum morePrimes2

    newList = [2,3,5]
    prodPrimes = product newList 
    zeroToTen = [0..10]
    evenList = [2,4..20]
    letterList = ['A', 'C' .. 'Z']
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

## Tuples 
**[⬆ back to top](#table-of-contents)**

    randTuple = (1, "Random Tuple")
    language = ("Hask", 20)
    otherLang = fst language
    time = snd language
    name = ["some", "any", "other"]
    address = ["123 East", "234 North", "345 South"]
    nameNAddress = zip name address

## Functions 
    main = do 
       putStrLn "What's your name"
       name <- getLine
       putStrLn ("Hello " ++name) 
       
       
      addMe :: Int -> Int -> Int
      addMe x y = x + y
       --functName param1 param2 = operations (returned value)
       
    addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
    addTuples (x, y) (x2, y2) = (x + x2, y + y2)
    
    whatAge :: Int -> String
    
    whatAge 16 = "You can drive"
    whatAge 18 = "You can vote"
    whatAge 21 = "You're an adult"
    whatAge _ = "Nothing important"
   

## Recursions 
**[⬆ back to top](#table-of-contents)**

    ```haskell
    factorial :: Int -> Int
    factorial 0 = 1
    factorial n = n * factorial(n-1)
    
    prodFact n = product [1..n]
   
## Guards 
    --gaurds
    isOdd :: Int -> Bool
    
    isOdd n
       | n `mod` 2 == 0 = False
       | otherwise = True
    isEven n = n `mod` 2 == 0
   
    whatGrade :: Int -> String
   
    whatGrade age
       | (age >= 5) && (age <=6) = "Kindergarten"
       | (age > 6) && (age <=10) = "Elemntary School"
       | (age > 10) && (age <=14) = "Middel School"
       | (age > 14) && (age <=18) = "High School"
       | otherwise = "Go to College"

    batAvgRating :: Double -> Double ->  String
    
    batAvgRating hits atBats
        | avg  <= 0.200 =  "Terrible Batting Average"
        | avg <= 0.250  = "Average Player"
        | avg <= 0.280 = "Your doing pretty good"
        | otherwise = "You're a Superstar"
        where avg = hits/atBats

## Lists
**[⬆ back to top](#table-of-contents)**
You can access list items by separating letters with : or get everything but  the first item with xs
   
    getListItems :: [Int] -> String
    getListItems [] = "Your list is empty"
    getListItems (x:[]) = "Your list starts with "++ show x
    getListItems (x:y:[]) = "Your list starts with "++ show x ++ " and " ++ show y
    getListItems (x:xs) = "The 1st item is "++ show x ++" and the  rest are " ++ show xs

We can also get values with an As pattern
    
    getFirstItem :: String -> String
    getFirstItem [] = "Empty String"
    getFirstItem all@(x:xs) = "The First letter in" ++ all ++ "is " ++ [x]
   
## Higher Order Functions 
**[⬆ back to top](#table-of-contents)**
Passing of functions as if they are variables 

    times4 :: Int -> Int
    times4 x = x * 4

    listTimes4 = map times4 [1,2,3,4,5]
    multiBy4 :: [Int] -> [Int]
    multiBy4 [] = []
    multiBy4 (x: xs) = times4 x : multiBy4 xs

    How is xs and multiBy4 will work 
    -- multiple by 4 , x= 1 xs = [2,3,4]
    -- [1,2,3,4] : x = 1 | xs = [2,3,4] 
    -- [2,3,4] : x = 2 | xs = [3,4]

    areStringsEq :: [Char] -> [Char] -> Bool
    areStringsEq [] [] = True
    areStringsEq (x: xs) (y: ys ) = x == y && areStringsEq xs ys
    areStringsEq _ _ = False
    
pass functions into functions
   
    doMult :: (Int -> Int) -> Int
    doMult func = func 3
    num3Times4 = doMult times4

return functions from functions
   
    getAddFunc :: Int -> (Int-> Int)
    getAddFunc x y = x + y
    adds3 = getAddFunc 3
    fourPlus3 = adds3 4
    threePlusList = map adds3 [1,2,3,4,5]

## Lambdas
**[⬆ back to top](#table-of-contents)**

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
modules 
    
    modules validString (getClass, doubleEvenNumbers) where 
    
    import validString
    
## Enumaration Types 
    
     data BaseballPlayer = Pitcher
                         | Catcher
                         | Infielder
                         | Outfield
                       deriving Show
     barryBonds :: BaseballPlayer -> Bool
     barryBonds Outfield = True
     
     barryInOF = print(barryBonds Outfield)
  
## Custom Types 
**[⬆ back to top](#table-of-contents)**

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
    
    data Shape = Circle Float Float Float | Rectangle Float Float Float Float
        deriving Show
    
    
    area :: Shape -> Float
    
    area (Circle _ _ r) = pi * r ^ 2
    
    area (Rectangle x y  x2 y2 ) = (abs $ x2-x ) * (abs $y2-y )
    
    sumValue = putStrLn (show (1 + 2))
    
    sumValue2 = putStrLn . show $ 1 + 2
    
    areaOfCircle = area (Circle 50 60 20)
    areaOfRect = area (Rectangle 10 10 100 100)

## Type Classes


    data Employee = Employee {
    name :: String,
    position :: String,
    idNum :: Int
    } deriving (Eq, Show)

    samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 1223}
    pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 1224}
    isSamPam = samSmith == pamMarx
    samSmithData= show samSmith
    
    
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
    
    class MyEq a where
        areEqual :: a -> a -> Bool
    
    data ShirtSize = S | M  | L
    
    instance MyEq ShirtSize where
        areEqual S S = True
        areEqual M M = True
        areEqual L L = True
        areEqual _ _ = True
    
    newSize = areEqual M M   
    
    writeToFile = do
        theFile  <- openFile "test.txt" WriteMode
        hPutStrLn theFile ("Random line of text")
        hClose theFile
    
    readFromFile = do
        theFile2 <- openFile "test.txt" ReadMode
        contents <- hGetContents theFile2
        putStr contents
        hClose theFile2
        
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
             
   
## How to check a function in terminal 
**[⬆ back to top](#table-of-contents)**

    :t (+)
    :t truncate 
        truncate :: (RealFrac a, Integral b) => a -> b 
        return type integer 
        
    :t (t)
    output (+) :: Num a => a -> a -> a
    


## Links for the cheatsheet 
[Derek Banas](https://www.youtube.com/watch?v=02_H3LjqMr8&t=2699s)