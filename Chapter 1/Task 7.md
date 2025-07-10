HC1T7 - Task 7: Converting Fahrenheit to Celsius

```haskell
-- fToC: Converts Fahrenheit to Celsius
-- Formula: (F − 32) × 5 ÷ 9
fToC :: Floating a => a -> a
fToC f = (f - 32) * 5 / 9

-- Main function to test fToC
main :: IO ()
main = do
    let fahrenheit = 98.6
    let celsius = fToC fahrenheit
    putStrLn $ show fahrenheit ++ "°F is " ++ show celsius ++ "°C"
```

---

### ✅ Explanation:

* **Function Signature**:

  ```haskell
  fToC :: Floating a => a -> a
  ```

  This allows `fToC` to work with `Float`, `Double`, or any type that supports floating-point operations.

* **Formula Used**:

  $$
  \text{Celsius} = (\text{Fahrenheit} - 32) \times \frac{5}{9}
  $$

---

### 🧪 Sample Output (for `98.6°F`):

```
98.6°F is 37.0°C
```
