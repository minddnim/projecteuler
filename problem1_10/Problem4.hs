main :: IO()
main = print $ maximum [x * y | x <- [100..999], y <- [100..999], cond (x * y)]

cond :: Integer -> Bool
cond n = and $ zipWith (==) (show n) ((reverse . show) n)