HC14T3

You can copy and paste this into a file like `Main.hs` and run it.

````haskell
```haskell
{-# LANGUAGE NumericUnderscores #-}

module Main where

main :: IO ()
main = do
  let bigNumber1 = 1_000_000
      bigNumber2 = 3_141_592_653
      bigNumber3 = 123_456_789_012_345
  putStrLn $ "Big Number 1: " ++ show bigNumber1
  putStrLn $ "Big Number 2: " ++ show bigNumber2
  putStrLn $ "Big Number 3: " ++ show bigNumber3
```
````

---

### ✅ Output Example

```
Big Number 1: 1000000
Big Number 2: 3141592653
Big Number 3: 123456789012345
```
