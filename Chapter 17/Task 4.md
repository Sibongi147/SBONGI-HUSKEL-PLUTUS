HC17T4

```haskell
-- Define the Sum newtype
newtype Sum a = Sum { getSum :: a }
  deriving (Eq, Show)

-- Semigroup instance using addition
instance Num a => Semigroup (Sum a) where
  Sum x <> Sum y = Sum (x + y)

-- Monoid instance with identity element 0
instance Num a => Monoid (Sum a) where
  mempty = Sum 0

-- Main function to test the Monoid behavior
main :: IO ()
main = do
  print (Sum 3 <> Sum 7)                    -- Output: Sum {getSum = 10}
  print (mempty <> Sum 5)                   -- Output: Sum {getSum = 5}
  print (mconcat [Sum 1, Sum 2, Sum 3])     -- Output: Sum {getSum = 6}
```

### ✅ How to Run It
Paste this directly into the OnlineGDB Haskell editor **without any formatting wrappers**—just the code above. That should compile and run without errors.

