HC19T5

---

### ✅ Haskell Code

```haskell
-- | Uses <*> to apply a pure (+) function to IO Int values and prints the sum
applyEffects :: (IO Int, IO Int) -> IO Int
applyEffects (ioX, ioY) = (+) <$> ioX <*> ioY

-- Example usage
main :: IO ()
main = do
    let x = do putStrLn "Enter first number:" >> readLn
    let y = do putStrLn "Enter second number:" >> readLn
    result <- applyEffects (x, y)
    putStrLn $ "The sum is: " ++ show result
```

---

### 🔍 Explanation

* `(+)$<$>` lifts the `(+)` function to work inside the `IO` context.
* `<*>` applies the function (now in `IO`) to the second `IO Int`.
* The two `IO Int` actions are run in sequence, and their values are summed.

