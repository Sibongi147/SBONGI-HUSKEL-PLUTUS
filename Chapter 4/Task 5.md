HC4T5 - Task 5: Add a Catch-All Pattern with a Custom Message
```haskell
-- specialBirthday: Returns a message based on the age using pattern matching,
-- includes the age in the message for non-special cases
specialBirthday :: Int -> String
specialBirthday 18 = "Happy 18th Birthday! Welcome to adulthood."
specialBirthday 21 = "Cheers on your 21st! Time to celebrate."
specialBirthday 50 = "Half a century! Congratulations!"
specialBirthday age = "Happy Birthday! You are " ++ show age ++ " years old."

-- Main function to test specialBirthday
main :: IO ()
main = do
    putStrLn $ specialBirthday 18
    putStrLn $ specialBirthday 21
    putStrLn $ specialBirthday 50
    putStrLn $ specialBirthday 30
```

---

### Expected Output:

```
Happy 18th Birthday! Welcome to adulthood.
Cheers on your 21st! Time to celebrate.
Half a century! Congratulations!
Happy Birthday! You are 30 years old.
```
