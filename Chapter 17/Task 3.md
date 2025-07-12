HC17T3

```haskell
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

import Data.Semigroup
import Data.Monoid

-- Severity data type with four levels
data Severity = Low | Medium | High | Critical
  deriving (Show, Eq, Ord)

-- Semigroup instance: higher severity overrides lower
instance Semigroup Severity where
  s1 <> s2 = max s1 s2

-- Monoid instance: identity is Low
instance Monoid Severity where
  mempty = Low
  mappend = (<>)

-- Example usage
main :: IO ()
main = do
  print $ Low <> Medium      -- Medium
  print $ High <> Medium     -- High
  print $ mempty <> Critical -- Critical
  print $ mempty            -- Low
```

**Explanation:**

* `Semigroup` defines `<>` as taking the maximum severity.
* `Monoid` sets `mempty` to `Low` (identity for severity combining).
* `mappend` is defined as `<>` from the `Semigroup` instance.

This means combining severities always picks the higher one, and `Low` acts as the neutral starting point.
