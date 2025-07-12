HC16T8

````haskell
```haskell
-- | Insertion sort implementation in Haskell

-- Inserts an element into the correct position in a sorted list
insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys)
  | x <= y    = x : y : ys
  | otherwise = y : insert x ys

-- Sorts a list using insertion sort
insertionSort :: [Int] -> [Int]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)

-- Example usage
main :: IO ()
main = do
  let unsortedList = [5, 2, 9, 1, 3]
  let sortedList = insertionSort unsortedList
  putStrLn $ "Sorted list: " ++ show sortedList
```
````

### ✅ How it works:

* `insert` places a single integer into its proper position in a sorted list.
* `insertionSort` recursively sorts the tail of the list and inserts the head into the sorted result.
* The example sorts the list `[5, 2, 9, 1, 3]`.

Let me know if you'd like it generalized to work with any `Ord` type instead of just `Int`.
