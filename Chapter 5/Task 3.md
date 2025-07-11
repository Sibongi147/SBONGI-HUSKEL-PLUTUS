HC5T3: Checking for Uppercase Letters
```haskell
import Data.Char (isUpper)

-- hasCapitalWord: Checks if any word in the list starts with an uppercase letter
hasCapitalWord :: [String] -> Bool
hasCapitalWord = any startsWithCapital
  where
    startsWithCapital []     = False
    startsWithCapital (x:_)  = isUpper x

-- Main function to test hasCapitalWord
main :: IO ()
main = do
    print $ hasCapitalWord ["hello", "world"]         -- False
    print $ hasCapitalWord ["hello", "World"]         -- True
    print $ hasCapitalWord ["Apple", "banana", "Cat"] -- True
```

---

### ✅ Expected Output:

```
False
True
True
```

### 📝 Explanation:

* `any`: checks if **any** element in the list satisfies a condition.
* `isUpper`: checks if a character is uppercase.
* `(x:_)`: pattern matches the **first character** of each word.
