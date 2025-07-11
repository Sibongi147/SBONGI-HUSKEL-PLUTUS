HC10T2: Create a type class Summable that provides a sumUp :: [a] -> a. Implement it for the type Int
```haskell
-- Define the Summable type class
class Summable a where
  sumUp :: [a] -> a

-- Implement the Summable instance for Int
instance Summable Int where
  sumUp = foldr (+) 0

-- Example usage
main :: IO ()
main = do
  let intList = [10, 20, 30, 40]
  putStrLn $ "Summed result: " ++ show (sumUp intList)
```

---

### ✅ Explanation:

* `Summable` is a **custom type class** requiring a `sumUp` method for any type `a`.
* The **instance for `Int`** implements summation using `foldr (+) 0`.
* The `main` function demonstrates `sumUp` with a list of integers.

---

### 🧪 Expected Output:

```
Summed result: 100
```
