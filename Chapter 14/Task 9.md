HC14T9

````haskell
```haskell
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

-- Function with a partial type signature using wildcard
exampleFunction :: _ => [Int] -> Int
exampleFunction xs = sum (take 3 xs)

main :: IO ()
main = do
  let result = exampleFunction [1, 2, 3, 4, 5]
  putStrLn $ "Sum of first 3 elements: " ++ show result
```
````

### ✅ Notes:

* `{-# LANGUAGE PartialTypeSignatures #-}` enables partial (wildcard) type signatures.
* The `_ =>` wildcard allows GHC to infer the necessary constraints (like `Num Int` in this case).
* This is useful for experimenting or for simplifying type annotations while developing.

