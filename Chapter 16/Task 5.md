HC16T5

````haskell
```haskell
import Data.Char (toUpper)

-- | Convert all characters in a string to uppercase
toUpperCase :: String -> String
toUpperCase = map toUpper

-- Example usage
main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  putStrLn "Uppercase version:"
  putStrLn (toUpperCase input)
```
````

### ✅ What It Does:

* `toUpperCase` maps the `toUpper` function (from `Data.Char`) over each character in the string.
* The `main` function gets input from the user and prints the uppercase version.

