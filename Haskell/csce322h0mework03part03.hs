https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
import Prelude
import System.Environment ( getArgs )
import Data.List
import Helpers

-- The main method that will be used for testing / comgand line access
main = do
     args <- getArgs
     filename <- readFile (head args)
     (hands,deck,discard) <- readUnoFile filename
     print "Result"
     let (ha,de,di) = manyPlayersOneMove discard deck hands
     printGame (ha,de,di)

-- YOUR CODE SHOULD COME AFTER THIS POINT
manyPlayersOneMove :: [(Char,Char)] -> [(Char,Char)] -> [[(Char,Char)]] -> ([[(Char,Char)]],[(Char,Char)],[(Char,Char)])
manyPlayersOneMove di de ha = (ha,de,di)
