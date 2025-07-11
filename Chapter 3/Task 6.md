HC3T6 - Advanced Task 6: Check leap year using if-then-else

### ✅ `isLeapYear :: Int -> Bool`

* Uses **`if-then-else`** to check leap year rules:

  * Divisible by **400** ⇒ `True`
  * Divisible by **100** but not 400 ⇒ `False`
  * Divisible by **4** ⇒ `True`
  * Otherwise ⇒ `False`

```haskell
-- isLeapYear: Determines whether a given year is a leap year
isLeapYear :: Int -> Bool
isLeapYear year =
    if year `mod` 400 == 0 then True
    else if year `mod` 100 == 0 then False
    else if year `mod` 4 == 0 then True
    else False

-- Main function to test isLeapYear
main :: IO ()
main = do
    putStrLn $ "isLeapYear 2000 = " ++ show (isLeapYear 2000)
    putStrLn $ "isLeapYear 1900 = " ++ show (isLeapYear 1900)
    putStrLn $ "isLeapYear 2024 = " ++ show (isLeapYear 2024)
```

---

### ✅ Explanation:

| Year | Condition Met                | Result  |
| ---- | ---------------------------- | ------- |
| 2000 | Divisible by 400             | `True`  |
| 1900 | Divisible by 100 but not 400 | `False` |
| 2024 | Divisible by 4               | `True`  |

---

### 🧪 Expected Output:

```
isLeapYear 2000 = True
isLeapYear 1900 = False
isLeapYear 2024 = True
```

