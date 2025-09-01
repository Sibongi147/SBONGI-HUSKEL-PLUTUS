HC13T9: Create a function that demonstrates renaming a module namespace and uses functions from both renamed modules.

---

```haskell
module Main where

import qualified Data.List as L   -- rename Data.List to L
import qualified Data.Map  as M   -- rename Data.Map to M

main :: IO ()
main = do
    -- Example list for Data.List
    let numbers = [5, 2, 9, 1, 3]
    putStrLn "Original list:"
    print numbers

    -- Use Data.List.sort via alias L
    let sortedNumbers = L.sort numbers
    putStrLn "Sorted list using L.sort:"
    print sortedNumbers

    -- Example association list for Data.Map
    let assocList = [("apple", 3), ("banana", 5), ("orange", 2)]
    putStrLn "\nOriginal association list:"
    print assocList

    -- Create a Map using M.fromList via alias M
    let fruitMap = M.fromList assocList
    putStrLn "Map created using M.fromList:"
    print fruitMap

    -- Lookup a value in the Map
    putStrLn "\nLookup 'banana' in fruitMap using M.lookup:"
    print (M.lookup "banana" fruitMap)
```

---

### ✅ How to Run

1. Save the file as `Main.hs`.
2. Run directly (no compile needed):

```bash
runghc Main.hs
```

3. Or compile and run:

```bash
ghc Main.hs -o main
./main        # Linux/macOS
main.exe      # Windows
```

---

### ✅ Expected Output

```
Original list:
[5,2,9,1,3]
Sorted list using L.sort:
[1,2,3,5,9]

Original association list:
[("apple",3),("banana",5),("orange",2)]
Map created using M.fromList:
fromList [("apple",3),("banana",5),("orange",2)]

Lookup 'banana' in fruitMap using M.lookup:
Just 5
```

---

### ✅ Key Points

* `import qualified ModuleName as Alias` renames the module namespace.
* Functions are called with the alias: `L.sort`, `M.fromList`, `M.lookup`.
* This avoids conflicts if two modules have functions with the same name.

---


