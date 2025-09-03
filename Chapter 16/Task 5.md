HC16T5

---

### 🔠 Convert String to Uppercase in Haskell

```haskell
import Data.Char (toUpper)

-- Function to convert all characters to uppercase
toUpperCase :: String -> String
toUpperCase = map toUpper

-- Main function to test it
main :: IO ()
main = do
    putStrLn "Enter a string:"
    input <- getLine
    let uppercased = toUpperCase input
    putStrLn $ "Uppercase version: " ++ uppercased
```

---

### 🧠 How It Works
- `map toUpper`: applies the `toUpper` function to each character in the string.
- `toUpper` comes from `Data.Char`, so we import it at the top.

---

### 🧪 Example Input
```
Enter a string:
hello world
```

Output:
```
Uppercase version: HELLO WORLD
```

