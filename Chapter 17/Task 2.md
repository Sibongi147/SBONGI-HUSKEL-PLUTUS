HC17T2


```haskell
-- Define Min and Max newtypes
newtype Min a = Min a deriving (Eq, Ord, Show)
newtype Max a = Max a deriving (Eq, Ord, Show)

-- Semigroup instance for Min: always choose the smaller value
instance Ord a => Semigroup (Min a) where
  Min x <> Min y = Min (min x y)

-- Semigroup instance for Max: always choose the larger value
instance Ord a => Semigroup (Max a) where
  Max x <> Max y = Max (max x y)

-- Example usage
main :: IO ()
main = do
  print (Min 3 <> Min 7)     -- Output: Min 3
  print (Max 3 <> Max 7)     -- Output: Max 7
  print (Min 42 <> Min 19)   -- Output: Min 19
  print (Max 42 <> Max 19)   -- Output: Max 42
```

---

### 🧪 Notes
- These wrappers are useful in fold operations where you want to track the minimum or maximum value.
- You can also add `Monoid` instances if you provide a sensible identity (e.g., `Min maxBound`, `Max minBound`), depending on the type.

