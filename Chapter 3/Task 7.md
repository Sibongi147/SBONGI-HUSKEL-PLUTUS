HC3T7 - Advanced Task 7: Determine the season based on the month using guards

### ✅ `season :: Int -> String`

* Uses **guards** to return the appropriate **season** based on the month number:

  * Months `12, 1, 2` → `"Winter"`
  * Months `3, 4, 5` → `"Spring"`
  * Months `6, 7, 8` → `"Summer"`
  * Months `9, 10, 11` → `"Autumn"`

```haskell
-- season: Returns the season based on the month number
season :: Int -> String
season month
    | month == 12 || month == 1 || month == 2  = "Winter"
    | month >= 3  && month <= 5                = "Spring"
    | month >= 6  && month <= 8                = "Summer"
    | month >= 9  && month <= 11               = "Autumn"
    | otherwise                                = "Invalid month"

-- Main function to test season
main :: IO ()
main = do
    putStrLn $ "season 3 = " ++ season 3
    putStrLn $ "season 7 = " ++ season 7
    putStrLn $ "season 11 = " ++ season 11
```

---

### ✅ Expected Output:

```
season 3 = Spring
season 7 = Summer
season 11 = Autumn
```

This code will also return `"Invalid month"` for any input not between 1 and 12.

