HC12T5
  ```haskell
-- Program to check if a given string is a palindrome

-- Function to check palindrome
isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  if isPalindrome input
    then putStrLn "The string is a palindrome."
    else putStrLn "The string is not a palindrome."
```

---

### ✅ Explanation:

* `isPalindrome` compares the string to its reverse.
* `main` reads user input and uses the function to print the result.

---

### 🧪 Example Interaction:

```
Enter a string:
racecar
The string is a palindrome.
```
