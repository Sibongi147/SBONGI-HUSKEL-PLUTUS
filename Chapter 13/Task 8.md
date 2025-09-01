HC13T8: Demonstrate how to handle name conflicts between two imported modules, using qualified imports. 


```haskell
module Main where

import qualified Data.List as L
import qualified Data.Map as M

main :: IO ()
main = do
    let list1 = [5, 3, 9, 1]
        list2 = [("a", 1), ("b", 2), ("c", 3)]

    -- Using Data.List.sort (qualified)
    putStrLn "Sorting list using Data.List.sort:"
    print (L.sort list1)

    -- Using Data.Map.fromList (qualified)
    putStrLn "\nCreating map using Data.Map.fromList:"
    print (M.fromList list2)
```

---

### ✅ How to Run

1. Save as `Main.hs`.
2. Run without compiling:

```bash
runghc Main.hs
```

3. Or compile:

```bash
ghc Main.hs -o main
./main        # Linux/macOS
main.exe      # Windows
```

---

### ✅ Expected Output

```
Sorting list using Data.List.sort:
[1,3,5,9]

Creating map using Data.Map.fromList:
fromList [("a",1),("b",2),("c",3)]
```

---

### ✅ Key Points

* `import qualified ModuleName as Alias` allows you to use functions with the same name from different modules without conflicts.
* Here, `L.sort` and `M.fromList` demonstrate qualified usage.
* No extra files are needed — fully runnable in one file.

---

