HC10T2: Create a type class Summable that provides a sumUp :: [a] -> a. Implement it for the type Int

```haskell
{-# OPTIONS_GHC -Wall #-}

-- Save as: Main.hs
module Main where

-- | A type class with a single method to sum up a list of values.
class Summable a where
  sumUp :: [a] -> a

-- | Summable instance for Int.
instance Summable Int where
  sumUp = foldr (+) 0

main :: IO ()
main = do
  putStrLn "Summable Type Class Demo (Int instance)"
  print (sumUp [1..10]        :: Int) -- 55
  print (sumUp []             :: Int) -- 0
  print (sumUp [42, -2, 5]    :: Int) -- 45
```

---

### Run with `runghc`

```bash
runghc Main.hs
```

### Or compile with `ghc`

```bash
ghc -O2 Main.hs -o summable
./summable
```

**Expected output:**

```
Summable Type Class Demo (Int instance)
55
0
45
```

---



