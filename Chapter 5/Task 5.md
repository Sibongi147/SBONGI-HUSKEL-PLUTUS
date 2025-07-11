HC5T5: Partial Application
```haskell
-- multiplyByFive: Uses partial application to multiply any number by 5
multiplyByFive :: Int -> Int
multiplyByFive = (*) 5

-- Main function to test multiplyByFive
main :: IO ()
main = do
    print $ multiplyByFive 1    -- 5
    print $ multiplyByFive 4    -- 20
    print $ multiplyByFive 10   -- 50
```

---

### ✅ Explanation:

* `(*) 5` is a **partially applied function**, meaning it fixes the first argument of `*` to 5.
* So `multiplyByFive x` becomes `5 * x`.

---

### 🧪 Expected Output:

```
5
20
50
```
