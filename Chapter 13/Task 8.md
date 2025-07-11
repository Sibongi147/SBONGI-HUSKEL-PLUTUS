HC13T8
```haskell
import qualified Data.List as List
import qualified Data.Map as Map

main :: IO ()
main = do
  let nums = [3,1,4,1,5,9,2,6,5]
  
  -- Use 'sort' from Data.List qualified as List
  let sortedNums = List.sort nums
  
  -- Use 'lookup' from Data.Map qualified as Map
  let sampleMap = Map.fromList [(1, "one"), (2, "two"), (3, "three")]
  let maybeVal = Map.lookup 2 sampleMap
  
  putStrLn $ "Sorted numbers: " ++ show sortedNums
  putStrLn $ "Lookup result for key 2: " ++ show maybeVal
```

---

### Explanation:

* Both `Data.List` and `Data.Map` define some functions with common names (e.g., `lookup`).
* To avoid naming conflicts, we import both modules qualified with aliases (`List` and `Map`).
* Then we prefix functions with the alias to specify which module’s function to use.
* This keeps the namespace clear and prevents clashes.
