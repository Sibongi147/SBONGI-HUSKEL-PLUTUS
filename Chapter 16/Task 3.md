HC16T3
````haskell
```haskell
-- Function to calculate the factorial of a number
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Example usage in main
main :: IO ()
main = do
  putStrLn "Enter a number to calculate its factorial:"
  input <- getLine
  let number = read input :: Integer
  putStrLn $ "Factorial of " ++ show number ++ " is " ++ show (factorial number)
```
````

### ✅ Explanation:

* `factorial 0 = 1` handles the base case.
* `factorial n = n * factorial (n - 1)` defines the recursive step.
* The program reads user input, converts it to an integer, and prints the result.

