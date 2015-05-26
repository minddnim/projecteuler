import Data.List

main :: IO()
main = do
  let n = 600851475143
  print $ head . head . filter (\x -> length x == 2) . map divisor $ divisor n

divisor :: Integer -> [Integer]
divisor n = divisor' n 2 bound [1,n]
  where bound = (truncate . sqrt . realToFrac) n

divisor' :: Integer -> Integer -> Integer -> [Integer] -> [Integer]
divisor' n d b ret | b < d = (sortBy . flip) compare ret
                   | n `mod` d == 0 = divisor' n (d+1) b (d:(n `div` d):ret)
                   | otherwise = divisor' n (d+1) b ret
