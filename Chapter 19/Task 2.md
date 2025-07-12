HC19T2

### ✅ Haskell Code (works correctly in markdown and GHC)

```haskell
-- | Adds three Maybe Int values using Applicative style
addThreeApplicative :: Maybe Int -> Maybe Int -> Maybe Int -> Maybe Int
addThreeApplicative x y z = pure (\a b c -> a + b + c) <*> x <*> y <*> z

-- Example usage
main :: IO ()
main = do
    print $ addThreeApplicative (Just 1) (Just 2) (Just 3)   -- Just 6
    print $ addThreeApplicative (Just 1) Nothing (Just 3)    -- Nothing
```

---

### 🔍 Explanation:

* `pure (\a b c -> a + b + c)` lifts a 3-argument function into the `Maybe` context.
* `<*>` applies each `Maybe` value in sequence.
* If **any argument is `Nothing`**, the result will be `Nothing`.

