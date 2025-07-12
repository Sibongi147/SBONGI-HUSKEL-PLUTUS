-- HC15T5: Write a safe division function using the Maybe type to avoid divide-by-zero errors.

---

### ✅ Haskell Code (Markdown-Compatible)

```haskell

-- Define safeDiv function
safeDiv :: (Eq a, Fractional a) => a -> a -> Maybe a
safeDiv _ 0 = Nothing
safeDiv x y = Just (x / y)

-- Main function to demonstrate usage
main :: IO ()
main = do
  let result1 = safeDiv 10 2
  let result2 = safeDiv 10 0
  putStrLn $ "10 / 2 = " ++ showResult result1
  putStrLn $ "10 / 0 = " ++ showResult result2

-- Helper to show Maybe result
showResult :: Maybe Double -> String
showResult (Just x) = show x
showResult Nothing  = "Division by zero error"
```

---

### 🧪 Sample Output:

```
10 / 2 = 5.0
10 / 0 = Division by zero error
```

---
