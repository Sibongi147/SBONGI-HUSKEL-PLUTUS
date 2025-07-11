HC4T4 - Task 4: Rewrite specialBirthday using Pattern Matching

Assuming the original function checks if the birthday matches some special ages like 18, 21, or 50 and returns a message accordingly.

```haskell
-- specialBirthday: Returns a message based on the age using pattern matching
specialBirthday :: Int -> String
specialBirthday 18 = "Happy 18th Birthday! Welcome to adulthood."
specialBirthday 21 = "Cheers on your 21st! Time to celebrate."
specialBirthday 50 = "Half a century! Congratulations!"
specialBirthday _  = "Happy Birthday!"

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
Happy Birthday!
```
