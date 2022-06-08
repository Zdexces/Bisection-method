--cabal run Bisection-method
module Main where
import Logic (bisection)
import TextPlot

-- getFloat :: IO Float
-- getFloat = do
--     putStr "a?"
--     string <- getLine
--     return (read string :: Float)

f :: Double -> Double
f x = x ^ 5 + 3 * x -9 * x



main :: IO ()
main=do
    let check = bisection (-5) (-0.3) 1e-4 f
    if check == Nothing
        then putStr "No root found."
    else
        print check
    let plot = emptyXYPlot .+ f .- (-5,-0.3) .| (-5,5)
    printPlot plot
    


    