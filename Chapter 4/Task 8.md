HC4T8 - Task 8: Extract Values from Tuples
```haskell
-- describeTuple: Extracts values from a tuple and returns a descriptive string
describeTuple :: (Show a, Show b) => (a, b) -> String
describeTuple (x, y) = "The first value is " ++ show x ++ " and the second value is " ++ show y ++ "."

-- Main function to test describeTuple
main :: IO ()
main = do
    putStrLn $ describeTuple (10, "apples")
    putStrLn $ describeTuple ('A', 3.14)
```

---

### Expected Output:

```
The first value is 10 and the second value is "apples".
The first value is 'A' and the second value is 3.14.
```

```
```
