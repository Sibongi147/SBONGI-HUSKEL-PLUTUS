HC18T5

---

### ✅ Haskell Code (markdown-ready):

```haskell
-- Define Functor instance for Either
instance Functor (Either e) where
  fmap _ (Left x)  = Left x
  fmap f (Right y) = Right (f y)

-- Example usage
example1 :: Either String Int
example1 = Right 10

example2 :: Either String Int
example2 = Left "Error"

-- Apply fmap
result1 = fmap (+1) example1  -- Right 11
result2 = fmap (+1) example2  -- Left "Error"

main :: IO ()
main = do
  print result1
  print result2
```

---

### 🧠 Explanation:

* The `Either e` type constructor takes one type argument `e`, so we fix it and define the `Functor` instance for `Right`.
* `fmap` applies the function only to the value inside `Right`.
* If the value is `Left`, it leaves it untouched.

---

### 🧪 Output:

```
Right 11
Left "Error"
```
