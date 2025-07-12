-- HC15T3: Define and throw a custom exception for traffic light errors.

* Define a **custom exception** for traffic light errors.
* Use it to **throw** an error when an invalid traffic light is detected.
* Handle it gracefully in the `main` function.

---

### ✅ Haskell Code (Markdown-Compatible)

```haskell


{-# LANGUAGE DeriveDataTypeable #-}

import Control.Exception
import Data.Typeable
import System.IO
import Text.Read (readMaybe)

-- Define TrafficLight data type
data TrafficLight = Red | Yellow | Green deriving (Show, Read, Eq)

-- Define a custom exception
data TrafficLightException = InvalidTrafficLight String
  deriving (Show, Typeable)

instance Exception TrafficLightException

-- Function that reacts to traffic light or throws exception
reactToLight :: String -> IO String
reactToLight input =
  case readMaybe input :: Maybe TrafficLight of
    Just Red    -> return "Stop the car."
    Just Yellow -> return "Slow down and prepare to stop."
    Just Green  -> return "Proceed with caution."
    Nothing     -> throwIO (InvalidTrafficLight $ "Unknown traffic light color: " ++ input)

-- Main function with exception handling
main :: IO ()
main = do
  putStrLn "Enter traffic light color (Red, Yellow, Green):"
  input <- getLine
  result <- try (reactToLight input) :: IO (Either TrafficLightException String)
  case result of
    Right message -> putStrLn $ "AI Reaction: " ++ message
    Left err      -> putStrLn $ "Error: " ++ show err
```

---

### 🧪 Example Run

```
Enter traffic light color (Red, Yellow, Green):
Blue
Error: InvalidTrafficLight "Unknown traffic light color: Blue"
```

---
