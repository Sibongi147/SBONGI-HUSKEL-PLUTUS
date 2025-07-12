-- HC15T1: Handle exceptions in a program that reads a file and calculates velocity based on user input.

---

### ✅ Haskell Code

```haskell

import System.IO
import Control.Exception
import Text.Read (readMaybe)

-- Calculate velocity: velocity = distance / time
calculateVelocity :: Float -> Float -> Float
calculateVelocity distance time = distance / time

-- Function to read float input safely
getFloat :: String -> IO Float
getFloat prompt = do
  putStrLn prompt
  input <- getLine
  case readMaybe input of
    Just n  -> return n
    Nothing -> do
      putStrLn "Invalid input. Please enter a number."
      getFloat prompt

main :: IO ()
main = do
  putStrLn "Enter the filename containing distance:"
  filename <- getLine

  contentsOrError <- try (readFile filename) :: IO (Either IOException String)

  case contentsOrError of
    Left ex -> putStrLn $ "Failed to read the file: " ++ show ex
    Right contents -> do
      let maybeDistance = readMaybe (head (lines contents)) :: Maybe Float
      case maybeDistance of
        Nothing -> putStrLn "File content is not a valid number."
        Just distance -> do
          time <- getFloat "Enter time (in seconds):"
          if time == 0
            then putStrLn "Time cannot be zero (division by zero error)."
            else do
              let velocity = calculateVelocity distance time
              putStrLn $ "Calculated velocity: " ++ show velocity ++ " units/sec"
```

---

### 📁 Sample File `distance.txt`

```
100
```

---

### 🧪 Example Run

```
Enter the filename containing distance:
distance.txt
Enter time (in seconds):
20
Calculated velocity: 5.0 units/sec
```

---

### 🛡️ Handles:

* Invalid file name or missing file
* Invalid number in file
* Invalid or non-numeric user input
* Division by zero
