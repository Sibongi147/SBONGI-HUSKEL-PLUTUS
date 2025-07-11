HC9T3: Define a Function to Add Values in a Box
```haskell
-- Define the Box data type
data Box a = Empty | Has a
    deriving (Show)

-- Define the addN function
addN :: Num a => a -> Box a -> Box a
addN _ Empty    = Empty
addN n (Has x)  = Has (n + x)

-- Examples
box1 :: Box Int
box1 = Has 10

box2 :: Box Int
box2 = Empty

-- Main function to test addN
main :: IO ()
main = do
    print $ addN 5 box1   -- Should print: Has 15
    print $ addN 3 box2   -- Should print: Empty
```

---

### ✅ Explanation:

* `Box a` holds either a value of type `a` (`Has a`) or is `Empty`.
* `addN` only adds the number `n` if the box contains a value (`Has x`).
* The function uses a `Num a =>` constraint to ensure the values can be added.

---

### 🧪 Expected Output:

```
Has 15
Empty
```
