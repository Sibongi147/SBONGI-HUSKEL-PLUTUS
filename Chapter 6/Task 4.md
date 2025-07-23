-- HC6T4: Product of elements using foldr
```haskell
-- productList: Computes the product of elements in a list using foldl
productList :: Num a => [a] -> a
productList = foldl (*) 1

-- Main function to test productList
main :: IO ()
main = do
    print $ productList [1, 2, 3, 4, 5]   -- 120
    print $ productList [10, -3, 7]       -- -210
    print $ productList []                 -- 1
```

---

### ✅ Explanation:

* `foldl (*) 1` folds the list from the left using `*` starting with `1`.
* Multiplies all elements together.

---

### 🧪 Expected Output:

```
120
-210
1
```
