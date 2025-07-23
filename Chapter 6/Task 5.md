-- HC6T5: Reverse a list (Recursive)
```haskell
-- reverseList: Recursively reverses a list
reverseList :: [a] -> [a]
reverseList []     = []
reverseList (x:xs) = reverseList xs ++ [x]

-- Main function to test reverseList
main :: IO ()
main = do
    print $ reverseList [1, 2, 3, 4, 5]    -- [5,4,3,2,1]
    print $ reverseList "haskell"           -- "lleksah"
    print $ reverseList ([] :: [Int])       -- []
```

---

### ✅ Explanation:

* Base case: empty list returns empty list.
* Recursive step: reverse the tail, then append the head at the end.

---

### 🧪 Expected Output:

```
[5,4,3,2,1]
"lleksah"
[]
```
