-- HC15T4: Use a handler function to catch and handle traffic light exceptions.

---

### ✅ Haskell Code (Markdown-Compatible)

```haskell

{-# LANGUAGE DeriveDataTypeable #-}

import Control.Exception
import Data.Typeable
import Text.Read (readMaybe)

-- Define TrafficLight data type
data TrafficLight = Red | Yellow | Green deriving (Show, Read, Eq)

-- Define custom exception
data TrafficLightException = InvalidTrafficLight String
  deriving (Show, Typeable)

instance Exception TrafficLightException

-- Function to interpret traffic light or throw exception
reactToLight :: String -> IO String
reactToLight input =
  case readMaybe input :: Maybe TrafficLight of
    Just Red    -> return "Stop the car."
    Just Yellow -> return "Slow down and prepare to stop."
    Just Green  -> return "Proceed with caution."
    Nothing     -> throwIO (InvalidTrafficLight $ "Invalid traffic light: " ++ input)

-- Exception handler function
handleTrafficException :: TrafficLightException -> IO String
handleTrafficException (InvalidTrafficLight msg) = return $ "Exception caught: " ++ msg

-- Main function using `handle`
main :: IO ()
main = do
  putStrLn "Enter traffic light color (Red, Yellow, Green):"
  input <- getLine
  message <- handle handleTrafficException (reactToLight input)
  putStrLn message
```

---

### 🧪 Example Output

```
Enter traffic light color (Red, Yellow, Green):
Blue
Exception caught: Invalid traffic light: Blue
```

---
