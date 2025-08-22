HC10T4: Create a parameterized type Box a and make it an instance of Eq.

```haskell
{-# OPTIONS_GHC -Wall #-}

-- Save as: Main.hs
module Main where

-- | A simple parameterized type that wraps a value of type 'a'.
data Box a = Box a
  deriving (Show)  -- for pretty-printing in examples

-- | Make Box an instance of Eq, delegating equality to the inner 'a'.
instance Eq a => Eq (Box a) where
  (Box x) == (Box y) = x == y
  (Box x) /= (Box y) = x /= y  -- not strictly necessary; default would suffice

-- Some sample values
b1 :: Box Int
b1 = Box 42

b2 :: Box Int
b2 = Box 42

b3 :: Box Int
b3 = Box 7

main :: IO ()
main = do
  putStrLn "Eq instance for Box demo"
  print (b1 == b2)    -- True
  print (b1 == b3)    -- False
  print (Box "hi" == Box "hi")  -- True
  print (Box 'a' /= Box 'b')    -- True
```

### How to run

Using `runghc`:

```bash
runghc Main.hs
```

Or compile:

```bash
ghc -O2 Main.hs -o box-eq
./box-eq
```

Expected output:

```
Eq instance for Box demo
True
False
True
True
```
