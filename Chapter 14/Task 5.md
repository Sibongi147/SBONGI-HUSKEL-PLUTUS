HC14T5

* Defines a custom data type `Result a`
* Uses pattern matching with the `@` symbol (as-pattern) to match and refer to the entire structure

````haskell
```haskell
module Main where

-- Define the Result data type
data Result a = Success a | Error String
  deriving Show

-- A function to handle Result using pattern matching with @
handleResult :: Show a => Result a -> String
handleResult r@(Success val) = "Got a success: " ++ show r ++ " with value: " ++ show val
handleResult e@(Error msg)   = "Oops! " ++ show e ++ " - Reason: " ++ msg

main :: IO ()
main = do
  let res1 = Success 42
  let res2 = Error "Something went wrong"
  putStrLn $ handleResult res1
  putStrLn $ handleResult res2
```
````

---

### 🔍 Explanation:

* `@` lets you name the entire pattern (`r` or `e`) while still matching on the internal structure.
* For example, in `r@(Success val)`, `r` refers to the whole `Success` value, and `val` binds the inside.
* This is helpful when you need to print both the whole structure and its parts.

