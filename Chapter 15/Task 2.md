-- HC15T2: Implement a basic self-driving AI car system that reacts to traffic light colors.

---

### ✅ Haskell Code (Markdown-Compatible)

```haske

module Main where

-- Define a data type for traffic lights
data TrafficLight = Red | Yellow | Green deriving (Show, Read, Eq)

-- Define the AI car reaction to the traffic light
reactToLight :: TrafficLight -> String
reactToLight light = case light of
  Red    -> "Stop the car."
  Yellow -> "Slow down and prepare to stop."
  Green  -> "Proceed with caution."

-- Main function to simulate interaction
main :: IO ()
main = do
  putStrLn "Enter traffic light color (Red, Yellow, Green):"
  input <- getLine
  let maybeLight = readMaybe input :: Maybe TrafficLight
  case maybeLight of
    Just light -> putStrLn $ "AI Reaction: " ++ reactToLight light
    Nothing    -> putStrLn "Invalid traffic light color. Try Red, Yellow, or Green."

-- Needed for safe parsing
import Text.Read (readMaybe)
```

---

### 🔍 How it works:

* Defines a `TrafficLight` data type.
* Uses `readMaybe` to safely parse user input.
* Pattern matching determines the car's behavior.

---

### 🧪 Example Interaction:

```
Enter traffic light color (Red, Yellow, Green):
Red
AI Reaction: Stop the car.
```

---

