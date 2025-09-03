HC17T6

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

-- Function to find the maximum severity in a list
maxSeverity :: [Severity] -> Severity
maxSeverity = mconcat

-- Main function to test it
main :: IO ()
main = do
  let severities1 = [Low, Medium, High]
  let severities2 = [Medium, Critical, Low]
  let severities3 = []
  print (maxSeverity severities1)  -- Output: High
  print (maxSeverity severities2)  -- Output: Critical
  print (maxSeverity severities3)  -- Output: Low (default)
```

---

### 🧠 Why This Works
- `mconcat` folds the list using `(<>)`, starting from `mempty` (`Low`).
- It’s safe even for empty lists, thanks to the identity.

