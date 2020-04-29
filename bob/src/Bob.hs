module Bob (responseFor) where
import Data.Char as C


allCapitalLetters :: String -> Bool
allCapitalLetters xs =  all C.isUpper xs && not (null xs)


responseFor :: String -> String
responseFor str 
            | checkYell &&  checkQuestion  = "Calm down, I know what I'm doing!"
            | checkYell   = "Whoa, chill out!"
            | checkSpace  = "Fine. Be that way!"
            | checkQuestion  = "Sure."
            | otherwise = "Whatever."
            where 
                checkYell = allCapitalLetters $ filter C.isLetter str
                checkSpace = all (== ' ') (dropWhile C.isSpace str)
                checkQuestion = last (filter (/= ' ') str) == '?'
       



