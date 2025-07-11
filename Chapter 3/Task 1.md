HC3T1 - Task 1: Check if a number is positive, negative, or zero

✅ Defines `checkNumber :: Int -> String`
✅ Uses an `if-then-else` statement to check if the input number is positive, negative, or zero
✅ Tests the function with `5`, `-3`, and `0`

```haskell
-- checkNumber: Returns "Positive", "Negative", or "Zero" based on the input
checkNumber :: Int -> String
checkNumber n =
    if n > 0 then "Positive"
    else if n < 0 then "Negative"
    else "Zero"

-- Main function to test checkNumber
main :: IO ()
main = do
    putStrLn $ "checkNumber 5 = " ++ checkNumber 5
    putStrLn $ "checkNumber (-3) = " ++ checkNumber (-3)
    putStrLn $ "checkNumber 0 = " ++ checkNumber 0
```

---

### ✅ Expected Output:

```
checkNumber 5 = Positive
checkNumber (-3) = Negative
checkNumber 0 = Zero
```

This code runs correctly and clearly shows how to use `if-then-else` in Haskell.

