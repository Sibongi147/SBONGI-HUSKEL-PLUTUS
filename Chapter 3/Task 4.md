HC3T4 - Task 4: Calculate the area of a triangle using Heron's formula

### ✅ `triangleArea :: Float -> Float -> Float -> Float`

* Uses `let` bindings to calculate the **semi-perimeter** `s`
* Applies **Heron’s formula** to compute the area of a triangle
* Includes a `main` function to test it with `(3, 4, 5)` and `(7, 8, 9)`

```haskell
-- triangleArea: Calculates the area of a triangle using Heron's formula
triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c =
    let s = (a + b + c) / 2
    in sqrt (s * (s - a) * (s - b) * (s - c))

-- Main function to test triangleArea
main :: IO ()
main = do
    putStrLn $ "Area of triangle with sides 3, 4, 5: " ++ show (triangleArea 3 4 5)
    putStrLn $ "Area of triangle with sides 7, 8, 9: " ++ show (triangleArea 7 8 9)
```

---

### ✅ Explanation

* **Heron’s formula**:

  $$
  \text{Area} = \sqrt{s(s - a)(s - b)(s - c)}, \quad \text{where } s = \frac{a + b + c}{2}
  $$
* `let s = ...` defines the semi-perimeter
* `sqrt` computes the square root of the Heron’s formula expression

---

### 🧪 Expected Output:

```
Area of triangle with sides 3, 4, 5: 6.0
Area of triangle with sides 7, 8, 9: 26.832815
```
