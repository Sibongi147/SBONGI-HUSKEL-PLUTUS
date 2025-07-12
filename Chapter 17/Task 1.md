HC17T1

````haskell
```haskell
-- Define Severity data type
data Severity = Low | Medium | High | Critical
  deriving (Show, Eq, Ord)

-- Implement Semigroup instance
instance Semigroup Severity where
  (<>) = max  -- The higher severity overrides the lower one

-- Example usage
main :: IO ()
main = do
  print (Low <> Medium)      -- Medium
  print (High <> Critical)   -- Critical
  print (Medium <> Low)      -- Medium
  print (High <> High)       -- High
```
````

### ✅ Explanation:

* The `Ord` instance is automatically derived, which gives us the ability to compare severities.
* `(<>) = max` uses the `max` function to return the higher severity when two are combined.
* This makes `Severity` suitable for combining values where you want to retain the most severe outcome.

