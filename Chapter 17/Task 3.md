HC17T3

```haskell
-- Define the Severity data type
data Severity = Low | Medium | High | Critical
  deriving (Eq, Ord, Show)

-- Semigroup instance: higher severity overrides lower one
instance Semigroup Severity where
  (<>) = max

-- Monoid instance: identity is Low
instance Monoid Severity where
  mempty = Low

-- Main function to test the Monoid behavior
main :: IO ()
main = do
  print (mempty <> Medium)     -- Output: Medium
  print (High <> mempty)       -- Output: High
  print (mconcat [Low, Medium, Critical]) -- Output: Critical
```

### ✅ How to Run It
Paste this directly into the OnlineGDB Haskell editor **without any Markdown formatting**—just the raw code. That should fix the compilation error.

