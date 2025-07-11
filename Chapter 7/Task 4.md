HC7T4: Create a custom type and implement Show and Read
```haskell
-- Define the Shape data type
data Shape = Circle Double | Rectangle Double Double
    deriving (Eq)

-- Implement the Show instance for Shape
instance Show Shape where
    show (Circle r) = "Circle " ++ show r
    show (Rectangle w h) = "Rectangle " ++ show w ++ " " ++ show h

-- Implement the Read instance for Shape
instance Read Shape where
    readsPrec _ input =
        case words input of
            ("Circle":r:_) ->
                [(Circle (read r), "")]
            ("Rectangle":w:h:_) ->
                [(Rectangle (read w) (read h), "")]
            _ -> []

-- Main function to test Show and Read
main :: IO ()
main = do
    let c = Circle 5.0
    let r = Rectangle 3.0 4.0

    putStrLn $ "Show Circle: " ++ show c          -- Show instance
    putStrLn $ "Show Rectangle: " ++ show r

    let parsedC = read "Circle 5.0" :: Shape       -- Read instance
    let parsedR = read "Rectangle 3.0 4.0" :: Shape

    print parsedC
    print parsedR
```

---

### ✅ Explanation:

* `Shape` has two constructors:

  * `Circle Double` (radius)
  * `Rectangle Double Double` (width and height)
* Custom `Show` and `Read` instances allow conversion to/from strings.

---

### 🧪 Expected Output:

```
Show Circle: Circle 5.0
Show Rectangle: Rectangle 3.0 4.0
Circle 5.0
Rectangle 3.0 4.0
```
