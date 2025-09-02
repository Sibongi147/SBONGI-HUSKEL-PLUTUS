-- HC15T2: Implement a basic self-driving AI car system that reacts to traffic light colors.

---

### 🚗 Basic Self-Driving AI Car Logic in Haskell

```haskell
-- Self-driving AI car reacting to traffic light colors

module Main where

-- Define traffic light colors
data TrafficLight = Red | Yellow | Green deriving (Show, Eq)

-- AI car decision function
reactToLight :: TrafficLight -> String
reactToLight light = case light of
  Red    -> "STOP: The car halts at the red light."
  Yellow -> "CAUTION: The car slows down and prepares to stop."
  Green  -> "GO: The car proceeds through the intersection."

-- Simulate traffic light sequence
simulateTraffic :: [TrafficLight] -> IO ()
simulateTraffic lights = mapM_ (putStrLn . reactToLight) lights

-- Main function
main :: IO ()
main = do
  let sequence = [Green, Yellow, Red, Green, Red]
  putStrLn "🚦 Self-driving car reacting to traffic lights:"
  simulateTraffic sequence
```

---

### 🧪 What It Does

- Defines a `TrafficLight` type with three states.
- Uses pattern matching to decide how the car reacts.
- Simulates a sequence of lights and prints the car’s response.



---
