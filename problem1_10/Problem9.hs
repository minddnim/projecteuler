main :: IO()
main = print $ [x*y*z| x<-[1..998], y <-[1..1000-x], z <- [1..1000-(x+y)], x^2+y^2==z^2]