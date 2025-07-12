HC16T2
````haskell
```haskell
-- Function to check if a string is a palindrome
isPalindrome :: String -> Bool
isPalindrome str = cleaned == reverse cleaned
  where
    cleaned = map toLower $ filter (/= ' ') str  -- remove spaces and make lowercase

-- Example usage in main
import Data.Char (toLower)

main :: IO ()
main = do
  putStrLn "Enter a word or phrase:"
  input <- getLine
  if isPalindrome input
    then putStrLn "It's a palindrome!"
    else putStrLn "Not a palindrome."
```
````

### ✅ How it works:

* Removes spaces from the string and converts it to lowercase for accurate comparison.
* Compares the cleaned string with its reverse.



