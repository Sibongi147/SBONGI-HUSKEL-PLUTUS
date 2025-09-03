HC17T8

```haskell
-- Generic fold using Semigroup
foldWithSemigroup :: Semigroup a => [a] -> a
foldWithSemigroup = foldr1 (<>)

-- Example: Using it with Severity
data Severity = Low | Medium | High | Critical
  deriving (Eq, Ord, Show)

instance Semigroup Severity where
  (<>) = max

main :: IO ()
main = do
  let severities = [Low, Medium, High, Critical]
  print (foldWithSemigroup severities)  -- Output: Critical
```

---

### 🧠 Why This Works

- `foldr1` is perfect here because it doesn’t need an identity (`mempty`), just a binary operation (`<>`).
- It requires a non-empty list, so if you want to handle empty lists safely, you could use `foldr` with a default or switch to `Monoid`.

---

### 🔒 Optional: Safer Version Using Monoid

If you want to handle empty lists gracefully:

```haskell
foldWithMonoid :: Monoid a => [a] -> a
foldWithMonoid = foldr (<>) mempty
```

