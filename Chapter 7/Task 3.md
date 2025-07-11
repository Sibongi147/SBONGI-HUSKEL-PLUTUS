HC7T3: Implement a function using multiple constraints
```haskell
-- compareValues: Returns the larger of two values using Ord
compareValues :: (Eq a, Ord a) => a -> a -> a
compareValues x y
    | x >= y    = x
    | otherwise = y

-- Main function to test compareValues
main :: IO ()
main = do
    print $ compareValues 10 20         -- 20
    print $ compareValues 'a' 'z'       -- 'z'
    print $ compareValues "apple" "app" -- "apple"
```

---

### ✅ Explanation:

* Type constraint `(Eq a, Ord a)` ensures `a` can be compared for equality and ordering.
* Uses guards to return the greater of the two.

---

### 🧪 Expected Output:

```
20
'z'
"apple"
```
