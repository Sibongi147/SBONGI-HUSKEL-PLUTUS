-- HC6T8: Implement a function that filters all even numbers from a list.
```haskell
-- filterEvens: Filters all even numbers from a list
filterEvens :: [Int] -> [Int]
filterEvens = filter even

-- Main function to test filterEvens
main :: IO ()
main = do
    print $ filterEvens [1..10]     -- [2,4,6,8,10]
    print $ filterEvens [11, 22, 33, 44] -- [22,44]
    print $ filterEvens []           -- []
```

---

### ✅ Explanation:

* Uses Haskell’s built-in `filter` with `even` predicate to select only even numbers.

---

### 🧪 Expected Output:

```
[2,4,6,8,10]
[22,44]
[]
```
