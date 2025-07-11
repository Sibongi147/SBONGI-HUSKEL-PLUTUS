HC5T10: Combining Higher-Order Functions
```haskell
-- hasLargeSquare: Checks if any squared value in the list is greater than 50
hasLargeSquare :: [Int] -> Bool
hasLargeSquare = any (>50) . map (^2)

-- Main function to test hasLargeSquare
main :: IO ()
main = do
    print $ hasLargeSquare [2, 4, 5]    -- False (4^2 = 16, 5^2 = 25)
    print $ hasLargeSquare [6, 8, 10]   -- True (8^2 = 64, 10^2 = 100)
    print $ hasLargeSquare [1, 7]       -- False (7^2 = 49)
```

---

### ✅ Explanation:

* `map (^2)`: squares each number
* `any (>50)`: checks if any square is greater than 50
* Function composition `any (>50) . map (^2)` combines them cleanly

---

### 🧪 Expected Output:

```
False
True
False
```
