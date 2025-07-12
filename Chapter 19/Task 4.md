HC19T4

---

### ✅ Haskell Code

```haskell
import Control.Applicative (liftA2)

-- | Lifts a binary function (Int -> Int -> Int) to work with applicative values.
liftAndMultiply :: Applicative f => f Int -> f Int -> f Int
liftAndMultiply = liftA2 (*)

-- Example usage with Maybe and lists
main :: IO ()
main = do
    print $ liftAndMultiply (Just 3) (Just 4)     -- Just 12
    print $ liftAndMultiply [1,2] [10,20]         -- [10,20,20,40]
```

---

### 🧠 Explanation

* `liftA2` takes a binary function (`*`) and lifts it into an `Applicative` context like `Maybe`, `[]`, `IO`, etc.
* In `Maybe`, it returns `Nothing` if any side is `Nothing`.
* In lists, it produces the Cartesian product of both lists under the multiplication function.

