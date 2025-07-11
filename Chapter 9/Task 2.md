HC9T2: Implement a Parametric Data Type
```haskell
-- Define the Box data type with a type parameter `a`
data Box a = Empty | Has a
    deriving (Show)

-- Example values of Box
emptyBox :: Box Int
emptyBox = Empty

fullBox :: Box String
fullBox = Has "Books"

-- A function to describe what's inside the box
describeBox :: Show a => Box a -> String
describeBox Empty    = "The box is empty."
describeBox (Has x)  = "The box contains: " ++ show x

-- Main function to test Box examples
main :: IO ()
main = do
    putStrLn $ describeBox emptyBox
    putStrLn $ describeBox fullBox
```

---

### ✅ Explanation:

* `Box a` is a **parametric data type**, meaning it works with any type `a`.
* It has two constructors:

  * `Empty` for an empty box
  * `Has a` for a box that contains a value of type `a`
* `describeBox` uses pattern matching to describe what's inside.

---

### 🧪 Expected Output:

```
The box is empty.
The box contains: "Books"
```
