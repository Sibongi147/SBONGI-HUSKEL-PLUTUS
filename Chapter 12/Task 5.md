HC12T5

```haskell
-- Palindrome.hs
import Data.Char (toLower, isAlphaNum)

-- Checks if a string is a palindrome (ignores case and non-alphanumerics)
isPalindrome :: String -> Bool
isPalindrome str =
  let cleaned = map toLower (filter isAlphaNum str)
  in cleaned == reverse cleaned

main :: IO ()
main = do
  putStrLn "Enter a string to check if it's a palindrome:"
  input <- getLine
  putStrLn $
    if isPalindrome input
      then "✅ Yes, it's a palindrome!"
      else "❌ No, it's not a palindrome."
```

### How to run

**Compile (Linux/macOS):**

```bash
ghc Palindrome.hs -o palindrome
./palindrome
```

**Example:**

```
Enter a string to check if it's a palindrome:
Never odd or even
✅ Yes, it's a palindrome!
```


