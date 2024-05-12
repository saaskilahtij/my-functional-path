import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  case args of
    [] -> putStrLn "Usage: common_divisor <number1> <number2>"
    (num1String:num2String:_) -> do
      let num1 = read num1String :: Int
      let num2 = read num2String :: Int
      let divisor = gcd num1 num2
      print divisor
