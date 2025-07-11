HC7T5: Implement a function that uses Num constraints
```haskell
-- squareArea: Calculates the area of a square given its side length
squareArea :: Num a => a -> a
squareArea side = side * side

-- Main function to test squareArea
main :: IO ()
main = do
    print $ squareArea 4        -- 16
    print $ squareArea 5.5      -- 30.25
    print $ squareArea (3 :: Int)    -- 9
```

---

### ✅ Explanation:

* The type signature `Num a => a -> a` means it works with any numeric type (`Int`, `Float`, `Double`, etc.).
* Multiplies the side by itself to get the area of the square.

---

### 🧪 Expected Output:

```
16
30.25
9
```
