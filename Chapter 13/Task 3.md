HC13T3
```haskell
import System.Directory (listDirectory)
import Data.List (isInfixOf, sort)

-- Function that filters files containing a substring and sorts the result
filterAndSortFiles :: String -> IO [FilePath]
filterAndSortFiles substring = do
  files <- listDirectory "."
  let filtered = filter (isInfixOf substring) files
  return $ sort filtered

-- Example usage in main
main :: IO ()
main = do
  putStrLn "Enter substring to filter files:"
  substring <- getLine
  sortedFiles <- filterAndSortFiles substring
  putStrLn "Sorted files containing the substring:"
  mapM_ putStrLn sortedFiles
```

---

### Explanation:

* Uses `listDirectory` to get file names.
* Filters with `isInfixOf` and sorts with `sort`.
* Prints sorted matching file names.
