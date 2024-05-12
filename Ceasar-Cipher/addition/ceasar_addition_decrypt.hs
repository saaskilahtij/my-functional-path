import System.Environment (getArgs)

type Key = Int
type PlainText = String
type CipherText = String
type Alphabet = String

alphabet :: Alphabet
alphabet = ['A'..'Z'] ++ ['Å','Ä','Ö']

decrypt :: Key -> CipherText -> PlainText
decrypt key ciphertext = map  (\x -> alphabet !! ((indexOf x - key) `mod` n)) ciphertext
  where
    indexOf x = case [i | (i, c) <- zip [0..] alphabet, c == x] of
      [] -> error "Character not found in alphabet"
      (i:_) -> i
    n = length alphabet

main :: IO ()
main = do
  args <- getArgs
  case args of
    [] -> putStrLn "Usage: ceasar_addition_decrypt <ciphertext> <key>"
    (ciphertext:keyString:_) -> do
      let key = read keyString :: Int
      let plaintext = decrypt key ciphertext
      print plaintext
