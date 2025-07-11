HC5T7: The $ Operator
```haskell
-- result: Rewritten using the $ operator to eliminate parentheses
result :: Int
result = sum $ map (*2) $ filter (>3) [1..10]

-- Main function to test result
main :: IO ()
main = do
    print result
```

---

### ✅ Explanation:

* `$` is the **function application operator**; it lets you **avoid parentheses**.
* This is equivalent to:
  `sum (map (*2) (filter (>3) [1..10]))`

---

### 🧪 Expected Output:

```
88
```

