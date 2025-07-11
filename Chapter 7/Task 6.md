HC7T6: Use the Integral and Floating type classes
```haskell
-- circleCircumference: Calculates the circumference of a circle given the radius
circleCircumference :: (Real a, Floating b) => a -> b
circleCircumference r = 2 * pi * realToFrac r

-- Main function to test circleCircumference
main :: IO ()
main = do
    print $ circleCircumference 7        -- 43.982297150257104
    print $ circleCircumference 5.5      -- 34.55751918948772
    print $ circleCircumference (10 :: Integer) -- 62.83185307179586
```

---

### ✅ Explanation:

* `Real a` allows input types like `Int`, `Integer`, etc.
* `Floating b` allows output types like `Float` or `Double`.
* `realToFrac` safely converts from any `Real` type to a `Floating` type.

---

### 🧪 Expected Output:

```
43.982297150257104
34.55751918948772
62.83185307179586
```
