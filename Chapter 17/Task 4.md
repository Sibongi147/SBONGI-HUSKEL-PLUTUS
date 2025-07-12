HC17T4
```haskell
import Data.Monoid

-- Sum newtype wrapping a numeric value
newtype Sum a = Sum { getSum :: a }
  deriving (Eq, Show)

-- Semigroup instance for Sum
instance Num a => Semigroup (Sum a) where
  Sum x <> Sum y = Sum (x + y)

-- Monoid instance for Sum with identity 0
instance Num a => Monoid (Sum a) where
  mempty = Sum 0
  mappend = (<>)

-- Example usage
main :: IO ()
main = do
  print $ getSum $ Sum 5 <> Sum 10    -- 15
  print $ getSum $ mempty <> Sum 7    -- 7
  print $ getSum mempty                -- 0
```

**Explanation:**

* `Sum` wraps a numeric value.
* `Semigroup` instance defines `<>` as addition.
* `Monoid` instance sets `mempty` to `Sum 0`.
* `mappend` uses `<>` from `Semigroup`.

This matches the usual monoid for sums where the identity is zero.
