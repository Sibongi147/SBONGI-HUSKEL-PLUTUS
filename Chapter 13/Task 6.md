HC13T6
```haskell
import qualified Data.Map as Map

-- | Converts a list of file names into a Map where
-- the key is the file name and the value is its length
fileNamesToMap :: [String] -> Map.Map String Int
fileNamesToMap files = Map.fromList [(file, length file) | file <- files]

-- Example usage:
-- fileNamesToMap ["test.txt", "hello.hs", "data.csv"]
-- Result: fromList [("data.csv",8),("hello.hs",8),("test.txt",8)]
```

---

### Explanation:

* Uses `Data.Map.fromList` to create a map from a list of key-value tuples.
* Keys are file names, values are the length of each file name.
* You can customize the value as needed (e.g., file size, last modified date).
