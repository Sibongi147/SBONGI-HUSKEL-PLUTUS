HC7T9: Define a type class with multiple instances
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

-- Main function to test Describable instances
main :: IO ()
main = do
    print $ describe True
    print $ describe False
    print $ describe (Circle 5.0)
    print $ describe (Rectangle 3.0 4.0)
```

---

### ✅ Explanation:

* `Describable` is a custom type class with one method: `describe`.
* Instances are defined for:

  * `Bool`: returns a description based on value.
  * `Shape`: returns a string based on the shape's dimensions.

---

### 🧪 Expected Output:

```
"This is True"
"This is False"
"A circle with radius 5.0"
"A rectangle with width 3.0 and height 4.0"
```
