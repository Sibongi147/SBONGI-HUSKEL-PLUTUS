HC14T8: Implement a function counts that returns a list of tuples showing character frequency in a string. 

```haskell
-- Save this as Main.hs and run with: runghc Main.hs

import Data.List (group, sort)

-- Function to count character frequencies
counts :: String -> [(Char, Int)]
counts str = map (\xs -> (head xs, length xs)) . group . sort $ str

-- Example usage
main :: IO ()
main = do
  let input = "hello world"
  print (counts input)
```

---

### 🧠 How It Works

- `sort str`: sorts the string so identical characters are adjacent.
- `group`: groups adjacent identical characters into sublists.
- `map (\xs -> (head xs, length xs))`: converts each group into a tuple of the character and its count.

---

### 🧪 Output for `"hello world"`

```haskell
[(' ',1),('d',1),('e',1),('h',1),('l',3),('o',2),('r',1),('w',1)]
```
