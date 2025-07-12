HC17T2

````haskell
```haskell
-- Define Min newtype
newtype Min a = Min a deriving (Show, Eq, Ord)

-- Define Max newtype
newtype Max a = Max a deriving (Show, Eq, Ord)

-- Semigroup instance for Min
instance Ord a => Semigroup (Min a) where
  Min x <> Min y = Min (min x y)

-- Semigroup instance for Max
instance Ord a => Semigroup (Max a) where
  Max x <> Max y = Max (max x y)

-- Example usage
main :: IO ()
main = do
  print (Min 3 <> Min 7)     -- Min 3
  print (Max 3 <> Max 7)     -- Max 7
  print (Min 42 <> Min 19)   -- Min 19
  print (Max 1 <> Max 1)     -- Max 1
```
````

### ✅ Notes:

* `newtype` is used for type safety and clearer intent.
* These instances are useful in fold operations where you want to track minimum or maximum values.

