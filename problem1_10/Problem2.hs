fib :: [Integer] -> [Integer]
fib f@(x1:x2:y) | x1 > 4*10^6 = x2:y
                | otherwise = fib ((x1+x2):f)
fib _ = error "not fib pattern"

main :: IO()
main = print $ (sum . filter even . fib) [2,1]