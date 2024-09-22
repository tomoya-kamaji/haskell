module Utils (doubleList, listLength) where

-- リストの要素を2倍にする関数
doubleList :: [Int] -> [Int]
doubleList = map (* 2)

-- リストの長さを計算する再帰関数
listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs