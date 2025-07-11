HC4T2 - Task 2: Define a dayType Function
```haskell
-- dayType: Determines if a day is a weekday or weekend using pattern matching
dayType :: String -> String
dayType "Saturday" = "It's a weekend!"
dayType "Sunday"   = "It's a weekend!"
dayType "Monday"   = "It's a weekday."
dayType "Tuesday"  = "It's a weekday."
dayType "Wednesday"= "It's a weekday."
dayType "Thursday" = "It's a weekday."
dayType "Friday"   = "It's a weekday."
dayType _          = "Invalid day"

-- Main function to test dayType
main :: IO ()
main = do
    putStrLn $ "dayType \"Saturday\" = " ++ dayType "Saturday"
    putStrLn $ "dayType \"Wednesday\" = " ++ dayType "Wednesday"
    putStrLn $ "dayType \"Funday\" = " ++ dayType "Funday"
```

---

### Expected Output:

```
dayType "Saturday" = It's a weekend!
dayType "Wednesday" = It's a weekday.
dayType "Funday" = Invalid day
```
