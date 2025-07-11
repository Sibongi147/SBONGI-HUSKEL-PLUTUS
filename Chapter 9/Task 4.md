HC9T4: Extract a Value from a Box
```haskell
-- Define the Box data type
data Box a = Empty | Has a
    deriving (Show)

-- Define the extract function
extract :: a -> Box a -> a
extract defaultValue Empty    = defaultValue
extract _ (Has x)             = x

-- Example boxes
box1 :: Box String
box1 = Has "Hello"

box2 :: Box String
box2 = Empty

-- Main function to test extract
main :: IO ()
main = do
    putStrLn $ extract "Default" box1  -- Output: "Hello"
    putStrLn $ extract "Default" box2  -- Output: "Default"
```

---

### ✅ Explanation:

* `extract` uses **pattern matching**:

  * If the box is `Empty`, it returns the provided `defaultValue`.
  * If the box is `Has x`, it returns `x`.

---

### 🧪 Expected Output:

```
Hello
Default
```
