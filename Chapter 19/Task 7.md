HC19T7

```haskell
import Control.Monad (when)

-- | Prints the given message only if the condition is True
conditionalPrint :: Bool -> String -> IO ()
conditionalPrint condition message = when condition (putStrLn message)

-- Example usage
main :: IO ()
main = do
  conditionalPrint True "This will print!"
  conditionalPrint False "This will NOT print!"
```

---

### Explanation:

* `when` takes a `Bool` and an `IO` action.
* It performs the action only if the `Bool` is `True`.
* Otherwise, it does nothing.

