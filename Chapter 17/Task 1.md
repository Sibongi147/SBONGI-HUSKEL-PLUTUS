HC17T1

```haskell
-- Define the Severity data type
data Severity = Low | Medium | High | Critical
  deriving (Eq, Ord, Show)

-- Semigroup instance: higher severity overrides lower one
instance Semigroup Severity where
  (<>) = max

-- Example usage in a main function
main :: IO ()
main = do
  print (Low <> Medium)     -- Output: Medium
  print (High <> Critical)  -- Output: Critical
  print (Medium <> Low)     -- Output: Medium
  print (High <> High)      -- Output: High
```

### ✅ How to Run It:
Paste this into your Haskell file (e.g. `main.hs`) and run it using an online compiler like [OnlineGDB’s Haskell editor](https://www.onlinegdb.com/online_haskell_compiler). Make sure:
- You don’t include Markdown formatting like triple backticks (` ``` `).
- You start with actual Haskell code, not a comment block.


