HC7T8: Use Read to parse a value from a string
```haskell
-- Define the Shape data type
data Shape = Circle Double | Rectangle Double Double
    deriving (Show, Eq)

-- parseShape: Parses a string into a Shape, returns Nothing on invalid input
parseShape :: String -> Maybe Shape
parseShape input =
    case words input of
        ["Circle", r] ->
            case reads r of
                [(radius, "")] -> Just (Circle radius)
                _              -> Nothing
        ["Rectangle", w, h] ->
            case (reads w, reads h) of
                ([(width, "")], [(height, "")]) -> Just (Rectangle width height)
                _                                -> Nothing
        _ -> Nothing

-- Main function to test parseShape
main :: IO ()
main = do
    print $ parseShape "Circle 5.5"           -- Just (Circle 5.5)
    print $ parseShape "Rectangle 3.0 4.0"    -- Just (Rectangle 3.0 4.0)
    print $ parseShape "Square 5.0"           -- Nothing
    print $ parseShape "Circle abc"           -- Nothing
```

---

### ✅ Explanation:

* The input string is split into words and pattern matched.
* `reads` safely parses strings into numbers.
* Returns `Just Shape` if parsing succeeds, otherwise `Nothing`.

---

### 🧪 Expected Output:

```
Just (Circle 5.5)
Just (Rectangle 3.0 4.0)
Nothing
Nothing
```
