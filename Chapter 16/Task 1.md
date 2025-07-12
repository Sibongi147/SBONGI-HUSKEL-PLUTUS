HC16T1

````haskell
```haskell
-- Function to reverse a string
reverseString :: String -> String
reverseString = reverse

-- Example usage in main
main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  putStrLn $ "Reversed: " ++ reverseString input
```
````

### 🧪 Sample Output:

```
Enter a string:
hello
Reversed: olleh
```

