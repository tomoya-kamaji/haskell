module Main (main) where

import Lib (someFunc)
import Math (add, fib)
import Utils (doubleList, listLength)

main :: IO ()
main = do
    let a = 5
    let b = 3
    putStrLn $ "Sum of " ++ show a ++ " and " ++ show b ++ " is " ++ show (add a b)
    
    let numbers = [1, 2, 3, 4, 5]
    putStrLn $ "Original list: " ++ show numbers
    putStrLn $ "Doubled list: " ++ show (doubleList numbers)
    putStrLn $ "Length of list: " ++ show (listLength numbers)
    
    putStrLn $ "Fibonacci of 10: " ++ show (fib 10)
    someFunc