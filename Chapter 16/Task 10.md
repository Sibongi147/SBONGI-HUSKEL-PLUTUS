HC16T10

```haskell
import qualified Data.Map as Map

-- Counts frequency of each character in a string
charFrequency :: String -> Map.Map Char Int
charFrequency = foldl updateFreq Map.empty
  where
    updateFreq freqMap char = Map.insertWith (+) char 1 freqMap

-- Main function to run in the compiler
main :: IO ()
main = do
  let input = "hello world"
  let freqMap = charFrequency input
  putStrLn "Character frequencies:"
  mapM_ print (Map.toList freqMap)
```

---

### 🧪 Sample Output:
```
Character frequencies:
('h',1)
('e',1)
('l',3)
('o',2)
(' ',1)
('w',1)
('r',1)
('d',1)
```



