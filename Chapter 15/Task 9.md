HC15T9

---

### ✅ Haskell Code (Markdown-Compatible)

```haskell
{-# LANGUAGE ScopedTypeVariables #-}

import System.IO
import Control.Exception
import System.IO.Error (isDoesNotExistError)

main :: IO ()
main = do
  putStrLn "Enter the file name to read:"
  fileName <- getLine
  result <- try (readFile fileName) :: IO (Either IOException String)
  case result of
    Right contents -> putStrLn "File contents:\n" >> putStrLn contents
    Left e 
      | isDoesNotExistError e -> putStrLn "Error: The file does not exist."
      | otherwise             -> putStrLn $ "An I/O error occurred: " ++ show e
```

---

### 📌 Explanation:

* `try (readFile fileName)` runs the file reading operation while catching exceptions.
* `Either IOException String` captures either:

  * `Right contents` — file read successfully.
  * `Left e` — an exception occurred, such as "file not found".
* `isDoesNotExistError` helps identify specific error types.

---

### 🧪 Example Output

```
Enter the file name to read:
myfile.txt
Error: The file does not exist.
```
