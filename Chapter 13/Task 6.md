HC13T6: Create a function that uses Data.Map to convert a list of filtered file names into a key-value map. 

```haskell
module Main where

import qualified Data.Map as Map
import System.FilePath (takeBaseName)

-- | Convert a list of file names into a Map.
--   Key   = filename without extension
--   Value = full filename
filenamesToMap :: [FilePath] -> Map.Map String FilePath
filenamesToMap files =
    Map.fromList [(takeBaseName f, f) | f <- files]

main :: IO ()
main = do
    let files = ["report.txt", "image.png", "notes.md"]
        fileMap = filenamesToMap files

    putStrLn "File map (key = base name, value = full name):"
    print fileMap

    -- Example lookup
    putStrLn "\nLooking up key 'report':"
    print (Map.lookup "report" fileMap)
```

---

## 🛠 How to run

```bash
runghc Main.hs
```

or compile:

```bash
ghc Main.hs -o filemap
./filemap        # Linux/macOS
filemap.exe      # Windows
```

---

## ✅ Expected output

```
File map (key = base name, value = full name):
fromList [("image","image.png"),("notes","notes.md"),("report","report.txt")]

Looking up key 'report':
Just "report.txt"
```

---

