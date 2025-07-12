HC14T8

```haskell
-- Frequency.hs
import Data.List (group, sort)

-- | Counts the frequency of each character in a string
counts :: String -> [(Char, Int)]
counts str = map (\g -> (head g, length g)) . group . sort $ str

-- | Example usage in main
main :: IO ()
main = do
  let input = "hello world"
  let freq = counts input
  putStrLn "Character frequencies:"
  mapM_ print freq
```

### 📝 Explanation:

* `sort str`: sorts the characters to bring duplicates together.
* `group`: groups adjacent equal elements into sublists.
* `map (\g -> (head g, length g))`: transforms each group into a tuple of (character, count).

### ✅ Example output for `"hello world"`:

```
Character frequencies:
(' ',1)
('d',1)
('e',1)
('h',1)
('l',3)
('o',2)
('r',1)
('w',1)
```
