HC17T6
```haskell
import Data.Monoid (mconcat)

data Severity = Low | Medium | High | Critical
  deriving (Show, Eq, Ord)

instance Semigroup Severity where
  (<>) = max

instance Monoid Severity where
  mempty = Low

-- Function to combine a list of Severity values, taking the maximum severity
maxSeverity :: [Severity] -> Severity
maxSeverity = mconcat

-- Example usage
main :: IO ()
main = do
  let severities = [Low, Medium, High, Medium, Critical, Low]
  print $ maxSeverity severities  -- Output: Critical
```
