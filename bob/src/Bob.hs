module Bob (responseFor) where
import Data.Char as C

checkQuestion :: String -> Bool 
checkQuestion str = last (filter (/= ' ') str) == '?'

checkYell :: String -> Bool
checkYell "" = False
checkYell str = allCapitalLetters $ filter C.isLetter str
            where
                allCapitalLetters xs =  all C.isUpper xs && not (null xs)

checkSpace :: String -> Bool
checkSpace str = all (== ' ') (dropWhile C.isSpace str)

responseFor :: String -> String
responseFor xs 
            | checkYell xs &&  checkQuestion xs = "Calm down, I know what I'm doing!"
            | checkYell xs  = "Whoa, chill out!"
            | checkSpace xs = "Fine. Be that way!"
            | checkQuestion xs = "Sure."
            | otherwise = "Whatever."


