HC9T5: Create a Parametric Data Type with Record Syntax
```haskell
-- Define a parametric data type Shape with a type parameter `a` for the color
data Shape a
    = Circle { radius :: Float, color :: a }
    | Rectangle { width :: Float, height :: Float, color :: a }
    deriving (Show)

-- Example instances of Shape with different color types
redCircle :: Shape String
redCircle = Circle { radius = 5.0, color = "Red" }

blueRectangle :: Shape String
blueRectangle = Rectangle { width = 10.0, height = 4.0, color = "Blue" }

-- Main function to print example shapes
main :: IO ()
main = do
    putStrLn $ "Circle: " ++ show redCircle
    putStrLn $ "Rectangle: " ++ show blueRectangle
```

---

### ✅ Explanation:

* `Shape a` is a **parametric data type**, where the type of `color` is generic.
* You can use `Shape String`, `Shape Int`, `Shape Bool`, etc.
* Both `Circle` and `Rectangle` constructors contain a `color :: a` field.

---

### 🧪 Expected Output:

```
Circle: Circle {radius = 5.0, color = "Red"}
Rectangle: Rectangle {width = 10.0, height = 4.0, color = "Blue"}
```
