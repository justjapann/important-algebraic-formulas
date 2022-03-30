module Main where

--https://www.toppr.com/guides/maths-formulas/algebra-formula/

--(a+b)^2 = a^2 + b^2 + 2ab
f1 :: Num a => a -> a -> a
f1 a b = a*a + b*b + 2 * a * b

--(a-b)^2 = a^2 + b^2 - 2ab
f2 :: Num a => a -> a -> a
f2 a b = a*a + b*b - 2 * a * b

--a^2 - b^2 = (a+b)(a-b)
f3 :: Num a => a -> a -> a
f3 a b = (a + b) * (a - b)

--a^2 + b^2 = (a+b)^2 - 2ab or a^2 + b^2 = (a-b)^2 + 2ab
f4 :: Num a => a -> a -> a
f4 a b = (a+b)^2 - 2 * a * b

f4' :: Num a => a -> a -> a
f4' a b = (a-b)^2 + 2 * a * b

--a^3 + b^3 = (a+b)(a^2 - ab + b^2) = (a+b)^3 - 3ab(a+b)
f5 :: Num a => a -> a -> a
f5 a b = (a+b) * (a*a - a*b + b*b)

f5' :: Num a => a -> a -> a
f5' a b = (a+b)^3 - 3*a*b*(a+b)

f5Final :: (Eq a, Num a) => a -> a -> Bool
f5Final f5 f5' = f5 == f5'

--2(a^2+b^2) = (a+b)^2 + (a-b)^2
f6 :: Num a => a -> a -> a
f6 a b = (a+b)^2 + (a-b)^2

--a^4 + b^4 = (a+b)(a-b)[(a+b)^2 - 2*a*b]
f7 :: Num a => a -> a -> a
f7 a b = (a+b) * (a-b) * ((a+b)^2 - 2*a*b)

--a^4 + b^4 = [(a+b)^2 - 2ab]^2 - 2(ab)^2
f8 :: Num a => a -> a -> a
f8 a b = ((a+b)^2 - 2*a*b)^2 - 2*(a*b)^2

--(a+b+c)^2 = a^2 + b^2 + c^2 + 2ab + 2bc + 2ca
f9 :: Num a => a -> a -> a -> a
f9 a b c = a*a + b*b + c*c + 2*a*b + 2*b*c + 2*c*a

--a^3 + b^3 + c^3 - 3ab = (a+b+c)(a^2 + b^2 + c^2 - ab - bc - ca)
f10 :: Num a => a -> a -> a -> a
f10 a b c = (a+b+c) * (a*a + b*b + c*c - a*b - b*c - c*a)

--a^4 + a^2b^2 + b^4 = (a^2 + ab + b^2)(a^2 - ab + b^2)
f11 :: Num a => a -> a -> a
f11 a b = (a*a + a*b + b*b) * (a*a - a*b + b*b)

--a^4 + a^2 + 1 = (a^2 + ab + b^2)(a^2 - a + 1)
f12 :: Num a => a -> a -> a
f12 a b = (a*a + a*b + b*b) * (a*a - a + 1)

main :: IO ()
main = do
  putStrLn "hello world"
