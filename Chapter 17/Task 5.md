HC17T5

```haskell
-- Function to combine two lists using Semigroup
combineLists :: [Int] -> [Int] -> [Int]
combineLists xs ys = xs <> ys

-- Main function to test it
main :: IO ()
main = do
  let list1 = [1, 2, 3]
  let list2 = [4, 5, 6]
  print (combineLists list1 list2)  -- Output: [1,2,3,4,5,6]
```

---

### 🧠 Why This Works
- Lists are `Semigroup` instances where `(<>)` is defined as concatenation.
- This means `combineLists` is just a wrapper around `(<>)`, making it semantically clear you're using the Semigroup behavior.



