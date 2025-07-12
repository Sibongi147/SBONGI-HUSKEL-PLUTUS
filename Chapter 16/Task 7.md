 HC16T7

````haskell
```haskell
-- | Function to check if an element exists in a list
elementExists :: Eq a => a -> [a] -> Bool
elementExists _ [] = False
elementExists x (y:ys)
  | x == y    = True
  | otherwise = elementExists x ys

-- Example usage
main :: IO ()
main = do
  putStrLn "Enter a number to check:"
  input <- getLine
  let number = read input :: Int
      sampleList = [1, 3, 5, 7, 9]
  putStrLn ("Element exists? " ++ show (elementExists number sampleList))
```
````

### ✅ Explanation:

* The function `elementExists` checks each element recursively.
* It uses pattern matching and guards.
* The type signature uses `Eq a =>` to require that the elements can be compared for equality.

