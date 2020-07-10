import Data.List
import System.IO

data Employee = Employee {
    name :: String,
    position :: String,
    idNum :: Int
} deriving (Eq, Show)

samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 1223}
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 1224}
isSamPam = samSmith == pamMarx
samSmithData= show samSmith
