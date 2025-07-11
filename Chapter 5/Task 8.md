HC5T8: Point-Free Style
```haskell
-- addFive: Point-free style version of a function that adds 5
addFive :: Int -> Int
addFive = (+ 5)

-- Main function to test addFive
main :: IO ()
main = do
    print $ addFive 3   -- 8
    print $ addFive 10  -- 15
```

---

### ✅ Explanation:

* `addFive x = x + 5` is rewritten as `addFive = (+ 5)` using **point-free style**.
* This eliminates the explicit parameter `x`.

---

### 🧪 Expected Output:

```
8
15
```
