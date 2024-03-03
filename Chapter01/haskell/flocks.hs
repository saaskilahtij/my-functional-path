
conjoin :: Integer -> Integer -> Integer
conjoin flock_x flock_y = flock_x + flock_y

breed :: Integer -> Integer -> Integer
breed flock_x flock_y = flock_x * flock_y

raid_flock :: Integer -> Integer -> [Integer]
raid_flock flock_x flock_y = 
  [conjoin flock_x flock_y - 1, 0]


main :: IO ()
main = do 
  let 
    flock_x = 4
    flock_y = 2
  
  let result = do raid_flock (breed flock_x (conjoin flock_x flock_y)) (breed flock_x flock_y)

  print result