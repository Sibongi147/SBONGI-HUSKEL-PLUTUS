HC16T2

```haskell
import Data.Char (toLower, isAlphaNum)

-- Function to check if a string is a palindrome
isPalindrome :: String -> Bool
isPalindrome str = cleaned == reverse cleaned
  where
    cleaned = map toLower $ filter isAlphaNum str

-- Main function to test it interactively
main :: IO ()
main = do
    putStrLn "Enter a string to check for palindrome:"
    input <- getLine
    if isPalindrome input
        then putStrLn "Yes, it's a palindrome!"
        else putStrLn "Nope, not a palindrome."
```
What It Does:
Prompts the user for input.

Reads the string.

Passes it to isPalindrome.

Prints the result based on the Boolean outcome.
