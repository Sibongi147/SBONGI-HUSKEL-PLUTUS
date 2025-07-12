HC15T6

---

### ✅ Haskell Code (Markdown-Compatible)

```haskell
{-# LANGUAGE ScopedTypeVariables #-}

import Text.Read (readMaybe)

-- Prompt the user for a number and parse it safely
main :: IO ()
main = do
  putStrLn "Enter a number:"
  input <- getLine
  case readMaybe input :: Maybe Int of
    Just n  -> putStrLn $ "You entered: " ++ show n
    Nothing -> putStrLn "Invalid input. Please enter a valid number."
```

---

### 🧪 Example Interaction

```
Enter a number:
42
You entered: 42

Enter a number:
hello
Invalid input. Please enter a valid number.
```

---

### 🔍 Notes:

* `readMaybe` attempts to parse the string and returns `Nothing` if it fails, avoiding crashes.
* `ScopedTypeVariables` is used to ensure the type for `readMaybe` is known.


