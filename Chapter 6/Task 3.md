-- HC6T3: Sum of Elements Using foldr
```haskell
-- sumList: Computes the sum of elements in a list using foldr
sumList :: Num a => [a] -> a
sumList = foldr (+) 0

-- Main function to test sumList
main :: IO ()
main = do
    print $ sumList [1, 2, 3, 4, 5]   -- 15
    print $ sumList [10, -3, 7]       -- 14
    print $ sumList []                -- 0
```

---

### ✅ Explanation:

* `foldr (+) 0` folds the list from the right using `+` starting with `0`.
* Effectively sums all elements in the list.

---

### 🧪 Expected Output:

```
15
14
0
```
