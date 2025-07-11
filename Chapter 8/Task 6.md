HC8T6: Define a type Shape using record syntax with fields center :: (Float, Float), color :: String, and radius :: Float for circles, and width :: Float, height :: Float, and color :: String for rectangles. Create an instance of Shape for a circle and a rectangle.
```haskell
-- Define the Shape data type using record syntax for Circle and Rectangle
data Shape
    = Circle { center :: (Float, Float), radius :: Float, color :: String }
    | Rectangle { topLeft :: (Float, Float), width :: Float, height :: Float, color :: String }
    deriving (Show)

-- Create an instance of Shape for a circle
circleShape :: Shape
circleShape = Circle
    { center = (0.0, 0.0)
    , radius = 5.0
    , color = "Red"
    }

-- Create an instance of Shape for a rectangle
rectangleShape :: Shape
rectangleShape = Rectangle
    { topLeft = (1.0, 1.0)
    , width = 10.0
    , height = 5.0
    , color = "Blue"
    }

-- Main function to print the shapes
main :: IO ()
main = do
    putStrLn "Circle:"
    print circleShape
    putStrLn "Rectangle:"
    print rectangleShape
```

---

### ✅ Explanation:

* `Shape` has **two constructors**:

  * `Circle` with fields: `center`, `radius`, and `color`
  * `Rectangle` with fields: `topLeft`, `width`, `height`, and `color`
* This uses **record syntax** for clarity and easy field access.
* Two values `circleShape` and `rectangleShape` are created with sample data.

---

### 🧪 Expected Output:

```
Circle:
Circle {center = (0.0,0.0), radius = 5.0, color = "Red"}
Rectangle:
Rectangle {topLeft = (1.0,1.0), width = 10.0, height = 5.0, color = "Blue"}
```
