HC1T3 - Task 3: Checking if a Number is Greater than 18

```haskell
-- greaterThan18: Checks if a number is greater than 18
greaterThan18 :: (Ord a, Num a) => a -> Bool
greaterThan18 x = x > 18

-- Main function to demonstrate usage
main :: IO ()
main = do
    putStrLn $ "Is 20 greater than 18? " ++ show (greaterThan18 20)
    putStrLn $ "Is 15 greater than 18? " ++ show (greaterThan18 15)
    putStrLn $ "Is 18 greater than 18? " ++ show (greaterThan18 18)
```

---

### ✅ Explanation:

* **Function Signature**:

  ```haskell
  greaterThan18 :: (Ord a, Num a) => a -> Bool
  ```

  This means:

  * It works for any type `a` that is a **number** (`Num a`) and **comparable** (`Ord a`).
  * It returns a `Bool` (`True` or `False`).

* **Behavior**:

  * Returns `True` if input is greater than 18
  * Returns `False` otherwise

---

### 🧪 Sample Output:

```
Is 20 greater than 18? True
Is 15 greater than 18? False
Is 18 greater than 18? False
```
