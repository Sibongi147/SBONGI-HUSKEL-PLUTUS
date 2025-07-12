HC14T4

````haskell
```haskell
{-# LANGUAGE TypeApplications #-}

module Main where

stringToInt :: String -> Int
stringToInt = read @Int

main :: IO ()
main = do
  putStrLn "Enter a number:"
  input <- getLine
  let number = stringToInt input
  putStrLn $ "You entered: " ++ show number
```
````

---

### ✅ Explanation

* `{-# LANGUAGE TypeApplications #-}` enables the use of `@Type` syntax.
* `read @Int` explicitly tells the compiler to parse the string as an `Int`.
* This approach is useful when type inference is ambiguous or when you want to make the type explicit.

