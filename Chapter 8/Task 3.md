Define a type Shape with constructors Circle Float and Rectangle Float Float. Create a function area :: Shape -> Float that calculates the area of the shape. Calculate the area of a circle with radius 5 and a rectangle with sides 10 and 5.
```haskell
-- Define the Shape data type with Circle and Rectangle constructors
data Shape = Circle Float | Rectangle Float Float
    deriving (Show)

-- Define the area function for Shape
area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

-- Main function to test area calculations
main :: IO ()
main = do
    let circleShape = Circle 5
    let rectangleShape = Rectangle 10 5

    putStrLn $ "Area of circle: " ++ show (area circleShape)       -- 78.53982
    putStrLn $ "Area of rectangle: " ++ show (area rectangleShape) -- 50.0
```

---

### ✅ Explanation:

* `Shape` is a custom data type with two constructors:

  * `Circle Float` takes a radius
  * `Rectangle Float Float` takes width and height
* The `area` function pattern matches on the shape and calculates accordingly.

---

### 🧪 Expected Output:

```
Area of circle: 78.53982
Area of rectangle: 50.0
```
