HC10T9: Implement a type class MinMax with methods minValue :: a and maxValue :: a, and provide instances for Int
```haskell
-- Define the MinMax type class
class MinMax a where
  minValue :: a
  maxValue :: a

-- Implement MinMax for Int
instance MinMax Int where
  minValue = minBound
  maxValue = maxBound

-- Example usage
main :: IO ()
main = do
  putStrLn $ "Minimum Int: " ++ show (minValue :: Int)
  putStrLn $ "Maximum Int: " ++ show (maxValue :: Int)
```

---

### ✅ Explanation:

* `MinMax` is a type class with two functions: `minValue` and `maxValue`.
* For `Int`, we use `minBound` and `maxBound`, since `Int` is already an instance of the `Bounded` type class.
* We specify `:: Int` in the `main` function to help the compiler infer the type.

---

### 🧪 Expected Output:

(Actual output may vary depending on your system architecture.)

```
Minimum Int: -9223372036854775808
Maximum Int: 9223372036854775807
```
