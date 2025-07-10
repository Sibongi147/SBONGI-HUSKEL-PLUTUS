HC2T5 - Task 5: Defining and Using Functions

* ✅ `circleArea`: calculates the area of a circle from a `Float` radius
* ✅ `maxOfThree`: finds the maximum of three `Int` values
* ✅ A `main` function that tests both with different inputs

```haskell
-- circleArea: Calculates the area of a circle given a Float radius
-- Formula: area = pi * r^2
circleArea :: Float -> Float
circleArea r = pi * r ^ 2

-- maxOfThree: Returns the maximum of three Int values
maxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z = max x (max y z)

-- Main function to test both
main :: IO ()
main = do
    -- Test circleArea with different radii
    putStrLn $ "Area of circle with radius 3.0: " ++ show (circleArea 3.0)
    putStrLn $ "Area of circle with radius 5.5: " ++ show (circleArea 5.5)
    
    -- Test maxOfThree with different sets of integers
    putStrLn $ "Max of (5, 9, 2): " ++ show (maxOfThree 5 9 2)
    putStrLn $ "Max of (12, 4, 12): " ++ show (maxOfThree 12 4 12)
    putStrLn $ "Max of (0, -1, -5): " ++ show (maxOfThree 0 (-1) (-5))
```

---

### ✅ Output Example:

```
Area of circle with radius 3.0: 28.274334
Area of circle with radius 5.5: 95.03318
Max of (5, 9, 2): 9
Max of (12, 4, 12): 12
Max of (0, -1, -5): 0
```

---
