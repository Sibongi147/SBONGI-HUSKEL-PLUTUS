HC3T9 - Advanced Task 9: Find the maximum of three numbers using let

### ✅ `maxOfThree :: Int -> Int -> Int -> Int`

* Uses `let` bindings to calculate intermediate maximums
* Returns the largest of the three numbers
* Includes test cases for `maxOfThree 10 20 15` and `maxOfThree 5 25 10`

---

```haskell
-- maxOfThree: Returns the maximum of three Int values using let bindings
maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c =
    let maxAB = max a b
        maxABC = max maxAB c
    in maxABC

-- Main function to test maxOfThree
main :: IO ()
main = do
    putStrLn $ "maxOfThree 10 20 15 = " ++ show (maxOfThree 10 20 15)
    putStrLn $ "maxOfThree 5 25 10 = "  ++ show (maxOfThree 5 25 10)
```

---

### 🧪 Expected Output:

```
maxOfThree 10 20 15 = 20
maxOfThree 5 25 10 = 25
```
