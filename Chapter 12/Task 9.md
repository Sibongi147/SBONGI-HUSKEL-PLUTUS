HC12T9
```haskell
import System.IO (readFile)
import System.IO.Error (catchIOError)
import Control.Exception (IOException)

main :: IO ()
main = do
  putStrLn "Enter the filename:"
  filename <- getLine
  contentOrError <- safeReadFile filename
  putStrLn contentOrError

-- Reads file content or returns error message
safeReadFile :: FilePath -> IO String
safeReadFile path = catchIOError
  (readFile path)
  (\e -> return $ "Error reading file: " ++ show e)
```

---

### ✅ Explanation:

* Asks user for a filename.
* Uses `catchIOError` to handle exceptions gracefully.
* Prints the file content if successful or error message otherwise.

---

### 🧪 Example:

```
Enter the filename:
myfile.txt
This is the content of myfile.txt.
```

Or if file doesn't exist:

```
Enter the filename:
nofile.txt
Error reading file: myfile.txt: openFile: does not exist (No such file or directory)
```
