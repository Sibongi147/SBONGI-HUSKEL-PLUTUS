HC3T2 - Task 2: Determine the grade based on a score using guards

✅ Uses guards to match score ranges
✅ Includes a `main` function that tests `grade 95`, `grade 72`, and `grade 50`

```haskell
-- grade: Classifies an Int score into a letter grade using guards
grade :: Int -> String
grade score
    | score >= 90 = "A"
    | score >= 80 = "B"
    | score >= 70 = "C"
    | score >= 60 = "D"
    | otherwise   = "F"

-- Main function to test the grade function
main :: IO ()
main = do
    putStrLn $ "grade 95 = " ++ grade 95
    putStrLn $ "grade 72 = " ++ grade 72
    putStrLn $ "grade 50 = " ++ grade 50
```

---

### ✅ Expected Output:

```
grade 95 = A
grade 72 = C
grade 50 = F
```

This demonstrates how to use guards to cleanly match conditions without using multiple `if-then-else` statements.

