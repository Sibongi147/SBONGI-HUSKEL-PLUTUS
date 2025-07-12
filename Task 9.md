HC19T9

```haskell
import Control.Applicative (Applicative, pure, (<*>))

-- | Demonstrates how 'pure' lifts a value into an applicative context
--   and how '<*>' applies a wrapped function to a wrapped value.
pureAndApply :: Applicative f => f (a -> b) -> f a -> f b
pureAndApply = (<*>)

-- Example usage with Maybe
exampleMaybe :: Maybe Int
exampleMaybe = pureAndApply (pure (+3)) (pure 7)
-- result: Just 10

-- Example usage with IO
exampleIO :: IO ()
exampleIO = do
  result <- pureAndApply (pure (+5)) (pure 10)
  print result
  -- Output: 15

main :: IO ()
main = exampleIO
```

---

### Explanation:

* `pure` lifts a pure value (or function) into an applicative context.
* `<*>` applies a function wrapped in the context (`f (a -> b)`) to a wrapped value (`f a`).
* `pureAndApply` is a general applicative function applying a wrapped function to a wrapped value.
* In the example, `pure (+3)` and `pure 7` both become `Maybe` values, and the function is applied inside the `Maybe`.
* Similarly for `IO`, `pure (+5)` and `pure 10` are lifted and applied inside the `IO` context.


