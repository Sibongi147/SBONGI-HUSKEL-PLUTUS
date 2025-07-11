HC5T4: Using Lambda Functions
```haskell
-- biggerThan10 rewritten using a lambda function
biggerThan10 :: Int -> Bool
biggerThan10 = \x -> x > 10

-- Main function to test biggerThan10
main :: IO ()
main = do
    print $ biggerThan10 5     -- False
    print $ biggerThan10 15    -- True
    print $ biggerThan10 10    -- False
```

---

### ✅ Expected Output:

```
False
True
False
```

### 📝 Explanation:

* `\x -> x > 10` is a **lambda function** (anonymous function) equivalent to `biggerThan10 x = x > 10`.
* This approach assigns the lambda directly to the function name.
