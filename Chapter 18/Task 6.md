HC18T6

---

### ✅ Haskell Code (markdown-ready):

```haskell
-- Function to apply a function to a Maybe value using fmap
applyToMaybe :: (a -> b) -> Maybe a -> Maybe b
applyToMaybe = fmap

-- Example usage
example1 :: Maybe Int
example1 = Just 10

example2 :: Maybe Int
example2 = Nothing

-- Applying a function
result1 = applyToMaybe (+5) example1  -- Just 15
result2 = applyToMaybe (+5) example2  -- Nothing

main :: IO ()
main = do
  print result1
  print result2
```

---

### 🧠 Explanation:

* `fmap` works with any `Functor`, and `Maybe` is a functor.
* `fmap f (Just x)` applies the function `f` to `x`.
* `fmap f Nothing` returns `Nothing`.

---

### 🧪 Output:

```
Just 15
Nothing
```
