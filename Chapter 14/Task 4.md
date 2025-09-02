HC14T4

---

## ✅ Haskell Code: Using `TypeApplications` to Convert String to Int

```haskell
{-# LANGUAGE TypeApplications #-}

main :: IO ()
main = do
    putStrLn "Enter a number as a string:"
    input <- getLine
    let number = read @Int input  -- Using TypeApplications to specify Int
    putStrLn $ "You entered the number: " ++ show number
```

---

### 🔹 How it works

1. `{-# LANGUAGE TypeApplications #-}` enables explicit type annotations for functions like `read`.
2. `read @Int input` tells Haskell: “Convert this string to an `Int`”.
3. `getLine` reads input from the user as a `String`.
4. `show` converts the `Int` back to a `String` for printing.

---

### 🔹 Example Run

```
Enter a number as a string:
42
You entered the number: 42
```

---

