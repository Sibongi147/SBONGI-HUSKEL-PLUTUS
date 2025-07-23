-- HC6T7: List Length
```haskell
-- listLength: Computes the length of a list recursively
listLength :: [a] -> Int
listLength []     = 0
listLength (_:xs) = 1 + listLength xs

-- Main function to test listLength
main :: IO ()
main = do
    print $ listLength [1, 2, 3, 4, 5]   -- 5
    print $ listLength "haskell"          -- 7
    print $ listLength ([] :: [Int])      -- 0
```

---

### ✅ Explanation:

* Base case: length of empty list is 0.
* Recursive step: add 1 for the head, then compute length of the tail.

---

### 🧪 Expected Output:

```
5
7
0
```
