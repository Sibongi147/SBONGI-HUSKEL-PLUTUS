HC3T5 - Task 5: Determine the type of a triangle using guards

### ✅ `triangleType :: Float -> Float -> Float -> String`

* Uses **guards** to classify a triangle as:

  * `"Equilateral"` if all three sides are equal
  * `"Isosceles"` if two sides are equal
  * `"Scalene"` if all sides are different
* Includes test cases: `3 3 3`, `5 5 8`, and `6 7 8`

```haskell
-- triangleType: Classifies a triangle based on the length of its sides
triangleType :: Float -> Float -> Float -> String
triangleType a b c
    | a == b && b == c           = "Equilateral"
    | a == b || b == c || a == c = "Isosceles"
    | otherwise                  = "Scalene"

-- Main function to test triangleType
main :: IO ()
main = do
    putStrLn $ "triangleType 3 3 3 = " ++ triangleType 3 3 3
    putStrLn $ "triangleType 5 5 8 = " ++ triangleType 5 5 8
    putStrLn $ "triangleType 6 7 8 = " ++ triangleType 6 7 8
```

---

### ✅ Expected Output:

```
triangleType 3 3 3 = Equilateral
triangleType 5 5 8 = Isosceles
triangleType 6 7 8 = Scalene
```
