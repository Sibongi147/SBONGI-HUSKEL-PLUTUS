HC12T8
```haskell
-- Function to merge two sorted lists into a single sorted list
mergeLists :: Ord a => [a] -> [a] -> [a]
mergeLists xs [] = xs
mergeLists [] ys = ys
mergeLists (x:xs) (y:ys)
  | x <= y    = x : mergeLists xs (y:ys)
  | otherwise = y : mergeLists (x:xs) ys

main :: IO ()
main = do
  let list1 = [1, 3, 5, 7]
      list2 = [2, 4, 6, 8]
      merged = mergeLists list1 list2
  putStrLn "Merged sorted list:"
  print merged
```

---

### ✅ Explanation:

* `mergeLists` merges two sorted lists recursively:

  * If one list is empty, return the other.
  * Compare heads; pick the smaller, recurse.
* `main` tests the function with two sorted lists and prints the result.

---

### 🧪 Output:

```
Merged sorted list:
[1,2,3,4,5,6,7,8]
```
