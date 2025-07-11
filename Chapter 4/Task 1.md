HC4T1 - Task 1: Define a weatherReport Function
```haskell
-- weatherReport: Returns a message based on the weather condition using pattern matching
weatherReport :: String -> String
weatherReport "sunny"  = "It's a bright and beautiful day!"
weatherReport "rainy"  = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _        = "Weather unknown"

-- Main function to test weatherReport
main :: IO ()
main = do
    putStrLn $ "weatherReport \"sunny\"  = " ++ weatherReport "sunny"
    putStrLn $ "weatherReport \"rainy\"  = " ++ weatherReport "rainy"
    putStrLn $ "weatherReport \"cloudy\" = " ++ weatherReport "cloudy"
    putStrLn $ "weatherReport \"windy\"  = " ++ weatherReport "windy"
```

---

### Expected Output:

```
weatherReport "sunny"  = It's a bright and beautiful day!
weatherReport "rainy"  = Don't forget your umbrella!
weatherReport "cloudy" = A bit gloomy, but no rain yet!
weatherReport "windy"  = Weather unknown
```
