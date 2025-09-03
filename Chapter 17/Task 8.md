HC17T8

```haskell
-- Define the Config data type
data Config = Config
  { loggingLevel :: Int     -- Higher is more verbose
  , timeout      :: Int     -- Timeout in milliseconds
  , retries      :: Int     -- Number of retry attempts
  } deriving (Show, Eq)

-- Semigroup instance: combine by max loggingLevel & retries, min timeout
instance Semigroup Config where
  Config l1 t1 r1 <> Config l2 t2 r2 =
    Config (max l1 l2) (min t1 t2) (max r1 r2)

-- Example usage
main :: IO ()
main = do
  let cfg1 = Config 2 5000 3
  let cfg2 = Config 4 3000 5
  let combined = cfg1 <> cfg2
  print combined
  -- Output: Config {loggingLevel = 4, timeout = 3000, retries = 5}
```

---

### 🧠 Why This Works

- `max` for `loggingLevel` and `retries` ensures we keep the more aggressive settings.
- `min` for `timeout` ensures we respect the stricter constraint.
- This is great for merging layered configs (e.g. default + user + environment).



