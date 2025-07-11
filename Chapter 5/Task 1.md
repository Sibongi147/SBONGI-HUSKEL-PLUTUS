HC5T1: Using applyTwice
```haskell
-- applyThreeTimes: Applies a given function to an integer three times
applyThreeTimes :: (Int -> Int) -> Int -> Int
applyThreeTimes f x = f (f (f x))

-- Example function: double a number
double :: Int -> Int
double n = n * 2

-- Main function to test applyThreeTimes
main :: IO ()
main = do
    putStrLn $ "Applying 'double' 3 times to 2: " ++ show (applyThreeTimes double 2)
    putStrLn $ "Applying (+1) 3 times to 5: " ++ show (applyThreeTimes (+1) 5)
```

---

### ✅ Explanation:

* `applyThreeTimes f x` means `f (f (f x))`
* Works with any function of type `Int -> Int`

---

### 🧪 Expected Output:

```
Applying 'double' 3 times to 2: 16
Applying (+1) 3 times to 5: 8
```

