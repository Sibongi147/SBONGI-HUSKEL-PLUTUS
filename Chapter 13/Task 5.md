HC13T5
```haskell
module SumNonEmpty (sumNonEmpty) where

-- Public function
sumNonEmpty :: Num a => [a] -> a
sumNonEmpty [] = emptyListError
sumNonEmpty xs = sum xs

-- Helper function (not exported)
emptyListError :: a
emptyListError = error "sumNonEmpty: empty list"
```

---

### Explanation:

* Only `sumNonEmpty` is exported.
* `emptyListError` is a helper function hidden from outside the module.
* This encapsulates the error message, improving module interface design.
