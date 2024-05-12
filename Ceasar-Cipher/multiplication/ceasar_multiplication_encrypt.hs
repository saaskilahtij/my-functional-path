import System.Environment (getArgs)

type Key = Int
type PlainText = String
type CipherText = String
type Alphabet = String

alphabet :: Alphabet
-- alphabet = ['A'..'Z'] ++ ['Å','Ä','Ö']
alphabet = ['A'..'Z']

encrypt :: Key -> PlainText -> CipherText
encrypt key plaintext = map (\x -> alphabet !! ((indexOf x * key) `mod` n)) plaintext
  where
    indexOf x = case [i | (i, c) <- zip [0..] alphabet, c == x] of
      [] -> error "Character not found in alphabet"
      (i:_) -> i
    n = length alphabet

main :: IO ()
main = do
  args <- getArgs
  case args of
    [] -> putStrLn "Usage: ceasar_multiplication_encrypt <plaintext> <key>"
    (plaintext:keyString:_) -> do
      let key = read keyString :: Int
      let ciphertext = encrypt key plaintext
      print ciphertext