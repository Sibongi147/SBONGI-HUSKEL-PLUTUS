HC16T6

````haskell
```haskell
-- | Recursive function to return the nth Fibonacci number
fib :: Int -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- Example usage
main :: IO ()
main = do
  putStrLn "Enter the position of the Fibonacci number:"
  input <- getLine
  let n = read input :: Int
  putStrLn ("The " ++ show n ++ "th Fibonacci number is: " ++ show (fib n))
```
````

### ✅ Notes:

* The function `fib` is defined recursively.
* The result is of type `Integer` to support larger Fibonacci numbers.
* The program reads user input and calculates the nth Fibonacci number.
