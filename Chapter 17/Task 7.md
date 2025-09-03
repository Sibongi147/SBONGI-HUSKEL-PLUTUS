HC17T7

```haskell
import Data.Monoid (Product(..), mconcat)

-- Function to multiply all Product values in a list
multiplyProducts :: [Product Int] -> Product Int
multiplyProducts = mconcat

-- Example usage
main :: IO ()
main = do
  let products1 = [Product 2, Product 3, Product 4]
  let products2 = []
  print $ getProduct $ multiplyProducts products1  -- Output: 24
  print $ getProduct $ multiplyProducts products2  -- Output: 1 (identity)
```

---

### 🧠 Why This Works

- `Product Int` is a wrapper that turns multiplication into a `Monoid`.
- `mconcat` folds the list using `(<>)`, which for `Product` means multiplication.
- `mempty` for `Product` is `Product 1`, so empty lists return 1 safely.


