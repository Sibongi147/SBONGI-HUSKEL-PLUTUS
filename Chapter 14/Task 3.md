HC14T3: Enable the NumericUnderscores extension. Create variables with large numbers and print them 

```haskell
{-# LANGUAGE NumericUnderscores #-}

main :: IO ()
main = do
    let bigNumber1 = 1_000_000       -- one million
        bigNumber2 = 123_456_789_012 -- over 123 billion
        bigNumber3 = 9_876_543_210_987_654_321 -- huge number

    putStrLn "Printing large numbers using NumericUnderscores:"
    putStrLn ("bigNumber1 = " ++ show bigNumber1)
    putStrLn ("bigNumber2 = " ++ show bigNumber2)
    putStrLn ("bigNumber3 = " ++ show bigNumber3)
```

---

### ✅ How it works

1. `{-# LANGUAGE NumericUnderscores #-}` tells GHC to allow underscores inside numeric literals.
2. `1_000_000` is interpreted exactly as `1000000`.
3. `show` converts numbers to `String` so `putStrLn` can print them.

---

### 🔹 Run on OnlineGDB

1. Copy the code into the **Haskell compiler** on OnlineGDB.
2. Click **Run**.


---


