HC5T2: Filtering Odd Numbers
```haskell
-- extractOdds: Uses filter to get all odd numbers from 1 to 30
extractOdds :: [Int]
extractOdds = filter odd [1..30]

-- Main function to test extractOdds
main :: IO ()
main = do
    putStrLn "Odd numbers from 1 to 30:"
    print extractOdds
```

---

### ✅ Expected Output:

```
Odd numbers from 1 to 30:
[1,3,5,7,9,11,13,15,17,19,21,23,25,27,29]
```

This code uses Haskell's built-in `odd` function with `filter` to extract only the odd numbers from the list `[1..30]`.
