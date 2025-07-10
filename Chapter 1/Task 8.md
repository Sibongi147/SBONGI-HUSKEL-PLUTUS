HC1T8 - Task 8: Higher-Order Functions

```haskell
-- applyTwice: Applies a function twice to a value
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Example function: double a number
double :: Int -> Int
double n = n * 2

-- Main function to test applyTwice
main :: IO ()
main = do
    let result = applyTwice double 3  -- double (double 3) = double 6 = 12
    putStrLn $ "Applying 'double' twice to 3 gives: " ++ show result
```

---

### ✅ Explanation:

* **Function Signature**:

  ```haskell
  applyTwice :: (a -> a) -> a -> a
  ```

  * Takes a function `(a -> a)` and a value `a`
  * Returns the result of applying the function twice: `f (f x)`

* In this example, `applyTwice double 3` computes:

  ```haskell
  double (double 3) = double 6 = 12
  ```

---

### 🧪 Sample Output:

```
Applying 'double' twice to 3 gives: 12
```
