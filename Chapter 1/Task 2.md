HC1T2 - Task 2: Pure Function Example

```haskell
-- circleArea: Calculates the area of a circle given the radius
-- Formula: area = pi * r^2
circleArea :: Floating a => a -> a
circleArea r = pi * r ^ 2

-- Main function to demonstrate usage
main :: IO ()
main = do
    let radius = 5.0
    putStrLn $ "Radius: " ++ show radius
    putStrLn $ "Circle area: " ++ show (circleArea radius)
```

---

### ✅ Explanation:

* **Function Signature**:

  ```haskell
  circleArea :: Floating a => a -> a
  ```

  This means the function works for any type `a` that is an instance of the `Floating` typeclass (like `Float` or `Double`).

* **Purity**:

  * The function is pure: it depends only on its input (`r`) and returns the result directly.
  * No external state or IO is used in the calculation.

---

### 🧪 Sample Output for radius `5.0`:

```
Radius: 5.0
Circle area: 78.53981633974483
```

