HC18T9

> `fmap (f . g) == fmap f . fmap g` for any functor `F` and functions `f` and `g`.

---

### ✅ Haskell Code (Markdown-ready):

```haskell
-- Composition law check for any Functor
compositionLawCheck :: (Eq (f c), Functor f) 
                    => (b -> c) -> (a -> b) -> f a -> Bool
compositionLawCheck f g x = fmap (f . g) x == (fmap f . fmap g) x

-- Example functions
fExample :: Int -> String
fExample = show

gExample :: Bool -> Int
gExample True  = 1
gExample False = 0

-- Example usage with Maybe
exampleMaybe :: Maybe Bool
exampleMaybe = Just True

-- Example usage with list
exampleList :: [Bool]
exampleList = [True, False, True]

main :: IO ()
main = do
  print $ compositionLawCheck fExample gExample exampleMaybe  -- True
  print $ compositionLawCheck fExample gExample exampleList   -- True
```

---

### 🧠 Explanation:

* The function takes two functions `f` and `g`, and a functor value `x`.
* It compares `fmap (f . g) x` with `(fmap f . fmap g) x`.
* Returns `True` if the law holds, `False` otherwise.
* Works on any functor with an `Eq` instance.

---

### 🧪 Sample Output:

```
True
True
```
