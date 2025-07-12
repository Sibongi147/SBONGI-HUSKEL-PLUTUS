HC16T10

````haskell
```haskell
import qualified Data.Map as Map

-- | Count the frequency of each character in a string
charFrequency :: String -> Map.Map Char Int
charFrequency = foldr insertChar Map.empty
  where
    insertChar c freqMap = Map.insertWith (+) c 1 freqMap

-- Example usage
main :: IO ()
main = do
  let input = "hello world"
  let frequencies = charFrequency input
  putStrLn "Character frequencies:"
  mapM_ print (Map.toList frequencies)
```
````

### ✅ Explanation:

* `Map.insertWith (+) c 1 freqMap` inserts `c` into the map or increments its count if it already exists.
* `foldr` processes each character and builds up the frequency map.
* `Map.toList` converts the map into a list of key-value pairs for display.

