HC18T8

> `fmap id == id` for any functor `F`.

---

### ✅ Haskell Code (Markdown-ready):

```haskell
-- Identity law check for any Functor
identityLawCheck :: (Eq (f a), Functor f) => f a -> Bool
identityLawCheck x = fmap id x == x

-- Example usage with Maybe
exampleMaybe :: Maybe Int
exampleMaybe = Just 10

-- Example usage with list
exampleList :: [Int]
exampleList = [1, 2, 3]

main :: IO ()
main = do
  print $ identityLawCheck exampleMaybe  -- True
  print $ identityLawCheck exampleList   -- True
```

---

### 🧠 Explanation:

* `identityLawCheck` takes a functor value and returns `True` if `fmap id x == x`, confirming the **identity law**.
* Works with any functor like `Maybe`, `[]`, `Either e`, etc.
* Requires `Eq` to compare the original and mapped values.

---

### 🧪 Sample Output:

```
True
True
```
