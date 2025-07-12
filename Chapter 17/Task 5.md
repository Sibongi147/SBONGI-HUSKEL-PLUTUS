HC17T5
```haskell
import Data.Semigroup (Semigroup, (<>))

-- Function that combines two lists using the Semigroup instance (list concatenation)
combineLists :: [Int] -> [Int] -> [Int]
combineLists xs ys = xs <> ys

-- Example usage
main :: IO ()
main = do
  let list1 = [1, 2, 3]
      list2 = [4, 5, 6]
  print $ combineLists list1 list2  -- Output: [1,2,3,4,5,6]
```
