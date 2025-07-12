HC19T6

```haskell
-- HC17T5: Define repeatEffect using forever

import Control.Monad (forever)

-- | repeatEffect takes an IO action and repeats it forever
repeatEffect :: IO () -> IO ()
repeatEffect = forever

-- Example usage
main :: IO ()
main = repeatEffect (putStrLn "Repeating effect...")
```

---

### ✅ Explanation:

* `forever` takes any `IO` action and repeats it indefinitely.
* `repeatEffect` simply wraps `forever` for reuse.
* `main` demonstrates its use by printing `"Repeating effect..."` endlessly.

> 🔁 Press `Ctrl+C` (or `Cmd+C` on macOS) to stop the execution when testing in terminal.



