HC13T4
```haskell
module SumNonEmpty (sumNonEmpty) where

-- | sumNonEmpty sums a non-empty list of numbers.
-- Throws an error if the list is empty.
sumNonEmpty :: Num a => [a] -> a
sumNonEmpty [] = error "sumNonEmpty: empty list"
sumNonEmpty xs = sum xs
```

---

### Explanation:

* The module is named `SumNonEmpty`.
* `sumNonEmpty` returns the sum of a list.
* If the list is empty, it throws a runtime error.
