HC5T9: Higher-Order Function to Transform a List
```haskell
-- transformList: Applies a given function twice to each element in a list
transformList :: (a -> a) -> [a] -> [a]
transformList f = map (f . f)

-- Example function: increment by 1
increment :: Int -> Int
increment x = x + 1

-- Main function to test transformList
main :: IO ()
main = do
    print $ transformList (*2) [1,2,3]     -- [4,8,12] (doubles twice)
    print $ transformList increment [5,6]  -- [7,8]   (adds 2 to each)
```

---

### ✅ Explanation:

* `f . f` means applying the function twice: `f (f x)`
* `map (f . f)` applies that to **each element** in the list

---

### 🧪 Expected Output:

```
[4,8,12]
[7,8]
```
