https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
module Helpers
( readUnoFile
, printGame
) where

import Prelude
import Data.Char
import Data.List
import Debug.Trace

readUnoFile :: String -> IO ([[(Char,Char)]],[(Char,Char)],[(Char,Char)])
readUnoFile = readIO

printGame :: ([[(Char,Char)]],[(Char,Char)],[(Char,Char)]) -> IO ()
printGame (hands,deck,discard) = do
	       		       	 print "Hands"
				 printHands hands
				 print "Discard"
				 printDiscard discard
				 print "Deck"
				 printDeck deck

printHands :: [[(Char,Char)]] -> IO ()
printHands [] = do
	      	print ""
printHands (h:hs) = do
	   	    printHand h
		    printHands hs

viewCards :: [(Char,Char)] -> [Char]
viewCards [] = ""
viewCards ((f,s):cs) = "[" ++ [f] ++ [s] ++ "]" ++ (viewCards cs)

printHand :: [(Char,Char)] -> IO ()
printHand h = print (viewCards h)

printDiscard :: [(Char,Char)] -> IO ()
printDiscard d = printHand d

printDeck :: [(Char,Char)] -> IO ()
printDeck d = printHand d  

