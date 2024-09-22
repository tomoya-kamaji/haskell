module Math (add, fib) where

-- 2つの数の和を計算する関数
add :: Int -> Int -> Int
add x y = x + y

-- フィボナッチ数列を計算する再帰関数
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)