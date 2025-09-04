HC19T10

```haskell
-- Put imports at the top
import Control.Applicative (liftA2)

-- Function to combine two Either values using applicative style
combineResults :: Either e (a -> b) -> Either e a -> Either e b
combineResults = (<*>)

-- Example usage
main :: IO ()
main = do
  let f = Right (+1) :: Either String (Int -> Int)
  let x = Right 5    :: Either String Int
  let err = Left "error" :: Either String Int

  print (combineResults f x)     -- Output: Right 6
  print (combineResults f err)   -- Output: Left "error"
```

---

### 🧠 Explanation

- `(<*>)` is the applicative operator for `Either`, applying a function inside `Right` to a value inside another `Right`.
- If either side is `Left`, the result is `Left`—it short-circuits on failure.
- `liftA2` is a helper that lifts a binary function into the applicative context, but you don’t even need it here unless you're combining two values with a binary function.

---

### 🔧 Optional: Using `liftA2`

If you want to combine two `Right` values with a binary function like addition:

```haskell
combineAdd :: Either e Int -> Either e Int -> Either e Int
combineAdd = liftA2 (+)
```

