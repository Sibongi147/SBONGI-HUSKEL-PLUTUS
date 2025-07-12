HC16T4
````haskell
```haskell
-- Function to filter even numbers from a list
filterEvens :: [Int] -> [Int]
filterEvens xs = filter even xs

-- Example usage in main
main :: IO ()
main = do
  let numbers = [1..20]
  putStrLn "Even numbers from 1 to 20:"
  print (filterEvens numbers)
```
````

### ✅ Explanation:

* `filter even xs` uses the built-in `even` function and `filter` to select only even numbers.
* The `main` function demonstrates the usage with numbers 1 to 20.

