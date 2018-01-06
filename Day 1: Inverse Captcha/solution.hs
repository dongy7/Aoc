import Data.Char

solve :: Int -> [Int] -> Int
solve n xs = sum [x | (x,y) <- xs `zip` drop n (cycle xs), x == y]

solveA :: [Int] -> Int
solveA xs = solve 1 xs

solveB :: [Int] -> Int
solveB xs = solve (length xs `div` 2) xs

convert :: String -> [Int]
convert = map digitToInt

main :: IO ()
main = do
  input <- readFile "data.txt"
  let captcha = convert input
  putStrLn $ show (solveA captcha)
  putStrLn $ show (solveB captcha)
