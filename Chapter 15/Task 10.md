HC15T10

---

### ✅ **Haskell Code (Markdown-Compatible)**

```haskell
{-# LANGUAGE ScopedTypeVariables #-}

import System.IO
import Control.Exception
import Text.Read (readMaybe)

-- Validate and compute velocity using Either
calculateVelocity :: String -> String -> Either String Float
calculateVelocity dStr tStr = do
  d <- maybeToEither "Invalid distance input!" (readMaybe dStr)
  t <- maybeToEither "Invalid time input!" (readMaybe tStr)
  if t == 0
    then Left "Time cannot be zero."
    else Right (d / t)

-- Helper to convert Maybe to Either
maybeToEither :: e -> Maybe a -> Either e a
maybeToEither err Nothing  = Left err
maybeToEither _   (Just x) = Right x

-- Main program with file I/O and validation
main :: IO ()
main = do
  putStrLn "Enter input file (with distance and time on separate lines):"
  fileName <- getLine
  fileResult <- try (readFile fileName) :: IO (Either IOException String)

  case fileResult of
    Left e -> putStrLn $ "File error: " ++ show e
    Right contents ->
      let ls = lines contents
      in case ls of
        (d:t:_) ->
          case calculateVelocity d t of
            Left err      -> putStrLn $ "Validation error: " ++ err
            Right velocity -> putStrLn $ "Velocity is: " ++ show velocity ++ " units/time"
        _ -> putStrLn "Error: File must contain at least two lines (distance and time)."
```

---

### 📄 Sample Input File (`input.txt`)

```
100
20
```

### 🧪 Sample Output

```
Enter input file (with distance and time on separate lines):
input.txt
Velocity is: 5.0 units/time
```

---

### ❗ Error Examples

**Invalid file:**

```
File error: input.txt: openFile: does not exist (No such file or directory)
```

**Invalid input data:**

```
Validation error: Invalid time input!
```

---

