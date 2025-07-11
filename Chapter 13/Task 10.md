HC13T10
```haskell

import System.Directory (listDirectory)
import Data.List (isInfixOf, sort)
import Control.Monad (when)

main :: IO ()
main = do
  putStrLn "Enter a keyword to search for files:"
  keyword <- getLine
  files <- listDirectory "."
  let matchingFiles = sort $ filter (isInfixOf keyword) files
  if null matchingFiles
    then putStrLn "No matching files found."
    else do
      putStrLn "Matching files:"
      mapM_ putStrLn matchingFiles
```

### ✅ How it works:

* `listDirectory "."` lists all files in the current directory.
* `filter (isInfixOf keyword)` filters the filenames that contain the user-provided keyword.
* `sort` arranges the results alphabetically.
* `mapM_ putStrLn` prints each filename on a new line.

### 🧪 Example:

```
Enter a keyword to search for files:
hs
Matching files:
Main.hs
Utils.hs
```
