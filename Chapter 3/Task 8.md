HC3T8 - Advanced Task 8: Calculate BMI and return category using where

### ✅ `bmiCategory :: Float -> Float -> String`

* Uses a `where` clause to calculate **BMI**:

  $$
  \text{BMI} = \frac{\text{weight}}{\text{height}^2}
  $$
* Uses **guards** to classify the BMI into categories:

  * `< 18.5` → `"Underweight"`
  * `18.5 to 24.9` → `"Normal"`
  * `25 to 29.9` → `"Overweight"`
  * `30 and above` → `"Obese"`

---

```haskell
-- bmiCategory: Classifies a person's BMI
bmiCategory :: Float -> Float -> String
bmiCategory weight height
    | bmi < 18.5  = "Underweight"
    | bmi < 25.0  = "Normal"
    | bmi < 30.0  = "Overweight"
    | otherwise   = "Obese"
    where bmi = weight / (height ^ 2)

-- Main function to test bmiCategory
main :: IO ()
main = do
    putStrLn $ "bmiCategory 70 1.75 = " ++ bmiCategory 70 1.75
    putStrLn $ "bmiCategory 90 1.8  = " ++ bmiCategory 90 1.8
```

---

### ✅ Explanation:

| Weight (kg) | Height (m) | BMI     | Category   |
| ----------- | ---------- | ------- | ---------- |
| 70          | 1.75       | \~22.86 | Normal     |
| 90          | 1.80       | \~27.78 | Overweight |

---

### 🧪 Expected Output:

```
bmiCategory 70 1.75 = Normal
bmiCategory 90 1.8  = Overweight
```

