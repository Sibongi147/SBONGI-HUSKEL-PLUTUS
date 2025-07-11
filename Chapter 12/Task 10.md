HC12T10
```haskell
-- MathOps.hs
module MathOps (add, multiply, square) where

-- Adds two numbers
add :: Num a => a -> a -> a
add x y = x + y

-- Multiplies two numbers
multiply :: Num a => a -> a -> a
multiply x y = x * y

-- Squares a number
square :: Num a => a -> a
square x = x * x
```

```haskell
-- Main.hs
import MathOps

main :: IO ()
main = do
  let a = 5
      b = 3
  putStrLn $ "Add: " ++ show (add a b)
  putStrLn $ "Multiply: " ++ show (multiply a b)
  putStrLn $ "Square of " ++ show a ++ ": " ++ show (square a)
```

---

### ✅ Explanation:

* `MathOps` module defines basic math functions: `add`, `multiply`, `square`.
* `Main.hs` imports `MathOps` and demonstrates usage in `main`.
* Functions are polymorphic over any `Num` type.

---

### 🧪 Run Instructions:

1. Save `MathOps.hs` and `Main.hs` in the same directory.
2. Compile with `ghc Main.hs`.
3. Run the executable:

```
Add: 8
Multiply: 15
Square of 5: 25
```
