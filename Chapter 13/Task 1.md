HC13T1
```haskell
import System.Directory (listDirectory)

main :: IO ()
main = do
  putStrLn "Files in the current directory:"
  files <- listDirectory "."
  mapM_ putStrLn files
```

---

### ✅ Explanation:

* Uses `listDirectory` from `System.Directory` to get all entries (files and directories) in `"."` (current directory).
* Prints each entry on its own line.

---

### 🧪 Example output:

```
Files in the current directory:
Main.hs
MathOps.hs
README.md
```
