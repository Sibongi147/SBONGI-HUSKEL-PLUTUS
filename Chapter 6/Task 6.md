-- HC6T6: Implement a function that determines whether a given element exists in a list.
```haskell
-- elementExists: Checks if an element exists in a list recursively
elementExists :: Eq a => a -> [a] -> Bool
elementExists _ [] = False
elementExists e (x:xs)
    | e == x    = True
    | otherwise = elementExists e xs

-- Main function to test elementExists
main :: IO ()
main = do
    print $ elementExists 3 [1, 2, 3, 4, 5]   -- True
    print $ elementExists 'a' "haskell"       -- False
    print $ elementExists 'k' "haskell"       -- True
```

---

### ✅ Explanation:

* Base case: empty list means element not found.
* Recursive case: check if head matches element, otherwise continue searching the tail.

---

### 🧪 Expected Output:

```
True
False
True
```
