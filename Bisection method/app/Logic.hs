module Logic where


bisection :: Double -> Double -> Double -> (Double -> Double) -> Maybe Double
bisection a b e f
  | a < b = bis a b
  | otherwise = bis b a
  where
    bis a b
      | (b-a) / 2 < e || f d == 0.0 = Just d
      | f (a) * f (d) < 0.0 = bis a d
      | f (d) * f (b) < 0.0 = bis d b
      | otherwise = Nothing
      where
        d = (b + a) / 2


-- bisection :: Double->Double->Double->(Double->Double)->Maybe Double
-- bisection a b e f
--     |f d==0.0 || (b-a)/2<=e =Just d
--     |f a * f d<0.0 =bisection a d e f
--     |f b * f d<0.0 = bisection b d e f
--     |otherwise =Nothing
--     where 
--         d=(a+b)/2
