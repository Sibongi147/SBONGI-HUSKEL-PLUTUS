HC1T6 - Task 6: Using Type Signatures

```haskell
-- addNumbers: Takes two integers and returns their sum
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

-- Main function to test addNumbers
main :: IO ()
main = do
    let a = 7
    let b = 5
    putStrLn $ "The sum of " ++ show a ++ " and " ++ show b ++ " is: " ++ show (addNumbers a b)
```

---

### ✅ Explanation:

* **Function signature**:
  `addNumbers :: Int -> Int -> Int`
  This means it takes two `Int` values and returns an `Int`.

* **Function body**:
  `addNumbers x y = x + y`
  It adds the two integers.

---

### 🧪 Sample Output (for `a = 7`, `b = 5`):

```
The sum of 7 and 5 is: 12
```

