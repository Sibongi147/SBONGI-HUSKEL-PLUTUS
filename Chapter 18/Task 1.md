HC18T1

```haskell
import Data.Char (toLower)

-- | Converts all characters in a string to lowercase using fmap
mapToLower :: String -> String
mapToLower = fmap toLower

-- Example usage
main :: IO ()
main = do
  let text = "HeLLo WoRLD!"
  putStrLn $ "Original: " ++ text
  putStrLn $ "Lowercase: " ++ mapToLower text
```

### ✅ Explanation:

* `String` is just `[Char]`, and `fmap` works on lists like `map`.
* `toLower` converts each character to lowercase.
* `fmap toLower` applies `toLower` to each character in the string.

### 💡 Output:

```
Original: HeLLo WoRLD!
Lowercase: hello world!
```

