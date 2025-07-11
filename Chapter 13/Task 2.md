HC13T2
```haskell
import System.Directory (listDirectory)
import Data.List (isInfixOf)

-- Function to filter files by substring in their names
filterFilesBySubstring :: String -> IO [FilePath]
filterFilesBySubstring substring = do
  files <- listDirectory "."
  return $ filter (isInfixOf substring) files

-- Example usage in main
main :: IO ()
main = do
  putStrLn "Enter substring to filter files:"
  substring <- getLine
  matchingFiles <- filterFilesBySubstring substring
  putStrLn "Files containing the substring:"
  mapM_ putStrLn matchingFiles
```

---

### Explanation:

* `listDirectory` lists all entries in the current directory.
* `filter` combined with `isInfixOf` filters filenames containing the given substring.
* The program prompts for a substring and prints matching files.
