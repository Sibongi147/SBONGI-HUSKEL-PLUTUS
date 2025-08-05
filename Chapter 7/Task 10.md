HC7T10: Use a function with multiple type class constraints
  ```haskell
-- Define the Shape data type
data Shape = Circle Double | Rectangle Double Double
    deriving (Show)

-- Define the Describable type class
class Describable a where
    describe :: a -> String

-- Implement Describable for Bool
instance Describable Bool where
    describe True  = "This is True"
    describe False = "This is False"

-- Implement Describable for Shape
instance Describable Shape where
    describe (Circle r) = "A circle with radius " ++ show r
    describe (Rectangle w h) = "A rectangle with width " ++ show w ++ " and height " ++ show h

-- Make Shape an instance of Ord by comparing area
instance Eq Shape where
    s1 == s2 = area s1 == area s2

instance Ord Shape where
    compare s1 s2 = compare (area s1) (area s2)

-- Helper function to compute the area of a shape
area :: Shape -> Double
area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

-- describeAndCompare: returns the description of the larger value
describeAndCompare :: (Describable a, Ord a) => a -> a -> String
describeAndCompare x y
    | x >= y    = describe x
    | otherwise = describe y

-- Main function to test describeAndCompare
main :: IO ()
main = do
    let c = Circle 3.0           -- Area ≈ 28.27
    let r = Rectangle 4.0 4.0    -- Area = 16.0
    putStrLn $ describeAndCompare c r   -- Should describe the Circle

    print $ describeAndCompare True False -- Should describe True
```

---

### ✅ Explanation:

* `Describable`: provides `describe`.
* `Ord`: used to compare values.
* For `Shape`, comparison is based on **area**.
* `describeAndCompare` returns the description of the **larger** value using `Ord`.

---

### 🧪 Expected Output:

```
A circle with radius 3.0
"This is True"
```
