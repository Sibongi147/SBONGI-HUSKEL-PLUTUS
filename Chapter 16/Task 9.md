HC16T9

```haskell
-- Removes duplicates from a list, keeping the first occurrence
removeDuplicates :: Eq a => [a] -> [a]
removeDuplicates [] = []
removeDuplicates (x:xs)
  | x `elem` xs = removeDuplicates xs
  | otherwise   = x : removeDuplicates xs

-- Main function to run in the compiler
main :: IO ()
main = do
  let input = [1, 2, 3, 2, 4, 1, 5]
  let result = removeDuplicates input
  putStrLn "List after removing duplicates:"
  print result
```

### 🛠 Notes:
- `main :: IO ()` is the entry point for your program.
- `putStrLn` prints a string, and `print` displays the list result.
- This version keeps the **last occurrence** of each element. If you want to keep the **first**, reverse the list before and after processing.

