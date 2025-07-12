HC16T9

````haskell
```haskell
-- | Remove duplicates from a list

removeDuplicates :: Eq a => [a] -> [a]
removeDuplicates [] = []
removeDuplicates (x:xs)
  | x `elem` xs = removeDuplicates xs
  | otherwise   = x : removeDuplicates xs

-- Example usage
main :: IO ()
main = do
  let listWithDuplicates = [1, 2, 3, 2, 4, 1, 5]
  let uniqueList = removeDuplicates listWithDuplicates
  putStrLn $ "List without duplicates: " ++ show uniqueList
```
````

### ✅ How It Works:

* The function recursively checks if the head of the list appears later in the tail.
* If it does, it skips that element.
* If it doesn't, it's added to the result.

