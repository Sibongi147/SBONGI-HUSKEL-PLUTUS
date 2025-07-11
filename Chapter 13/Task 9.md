HC13T9
```haskell
import qualified Data.List as L
import qualified Data.Map.Strict as M

demoRenaming :: IO ()
demoRenaming = do
  let nums = [5, 3, 8, 1, 4]
      sortedNums = L.sort nums                 -- using Data.List.sort as L.sort
      myMap = M.fromList [(1, "one"), (2, "two"), (3, "three")]
      hasKey2 = M.member 2 myMap                -- using Data.Map.Strict.member as M.member

  putStrLn $ "Sorted list: " ++ show sortedNums
  putStrLn $ "Does map contain key 2? " ++ show hasKey2

main :: IO ()
main = demoRenaming
```

---

### Explanation:

* `Data.List` is imported as `L`.
* `Data.Map.Strict` is imported as `M`.
* Functions are used with their respective aliases to avoid conflicts and clarify the origin.
* This pattern helps when multiple modules have overlapping function names.
