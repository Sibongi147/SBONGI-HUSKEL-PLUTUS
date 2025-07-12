HC19T3

### ✅ Haskell Code

```haskell
-- | Calculates the product of a list of Maybe Int values.
--   Returns Nothing if any element is Nothing.
safeProduct :: [Maybe Int] -> Maybe Int
safeProduct = foldr multiply (Just 1)
  where
    multiply :: Maybe Int -> Maybe Int -> Maybe Int
    multiply (Just x) (Just acc) = Just (x * acc)
    multiply _ _ = Nothing

-- Example usage
main :: IO ()
main = do
    print $ safeProduct [Just 2, Just 3, Just 4]     -- Just 24
    print $ safeProduct [Just 2, Nothing, Just 4]    -- Nothing
```

---

### 🔍 Explanation:

* `foldr` recursively multiplies all elements in the list.
* If any value is `Nothing`, it short-circuits and returns `Nothing`.
* Starts with `Just 1` as the identity for multiplication.

