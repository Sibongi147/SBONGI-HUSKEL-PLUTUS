HC19T10

```haskell
-- | Combines two Either values using a function in applicative style.
combineResults :: Either e a -> Either e b -> Either e (a, b)
combineResults = liftA2 (,)

-- We need to import liftA2
import Control.Applicative (liftA2)

-- Example usage:
example1 :: Either String (Int, Int)
example1 = combineResults (Right 5) (Right 10)
-- Result: Right (5,10)

example2 :: Either String (Int, Int)
example2 = combineResults (Left "Error1") (Right 10)
-- Result: Left "Error1"

example3 :: Either String (Int, Int)
example3 = combineResults (Right 5) (Left "Error2")
-- Result: Left "Error2"

main :: IO ()
main = do
  print example1
  print example2
  print example3
```

---

### Explanation:

* `liftA2 (,)` creates a function that takes two applicative values and combines them into a tuple.
* Since `Either e` is an instance of `Applicative`, it applies the function only if both values are `Right`; otherwise it propagates the first `Left`.
* This style elegantly combines two computations that might fail with errors of type `e`.

