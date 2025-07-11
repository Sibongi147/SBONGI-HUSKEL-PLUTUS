HC3T10 - Advanced Task 10: Check if a string is a palindrome using recursion and guards

### ✅ `isPalindrome :: String -> Bool`

* Uses **guards** to:

  * Return `True` if the string has **0 or 1 characters**
  * Recursively check if the **first and last characters match**
  * Otherwise, return `False`
* Includes tests for `"racecar"`, `"haskell"`, and `"madam"`

---

```haskell
-- isPalindrome: Checks if a string is a palindrome using recursion and guards
isPalindrome :: String -> Bool
isPalindrome str
    | length str <= 1               = True
    | head str == last str          = isPalindrome (init (tail str))
    | otherwise                     = False

-- Main function to test isPalindrome
main :: IO ()
main = do
    putStrLn $ "isPalindrome \"racecar\" = " ++ show (isPalindrome "racecar")
    putStrLn $ "isPalindrome \"haskell\" = " ++ show (isPalindrome "haskell")
    putStrLn $ "isPalindrome \"madam\"   = " ++ show (isPalindrome "madam")
```

---

### ✅ Expected Output:

```
isPalindrome "racecar" = True
isPalindrome "haskell" = False
isPalindrome "madam"   = True
```

### 📝 Notes:

* `head str`: gets the first character
* `last str`: gets the last character
* `tail str`: removes the first character
* `init str`: removes the last character


