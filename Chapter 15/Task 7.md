HC15T7

* Prompts the user for **distance** and **time**
* Uses `readMaybe` to safely parse the inputs
* Handles parsing errors and zero time using `Maybe`
* Calculates **velocity = distance / time** only when valid

---

### ✅ Haskell Code (Markdown-Compatible)

```haskell
{-# LANGUAGE ScopedTypeVariables #-}

import Text.Read (readMaybe)

-- Safe velocity calculation using Maybe
calculateVelocity :: Float -> Float -> Maybe Float
calculateVelocity _ 0 = Nothing
calculateVelocity distance time = Just (distance / time)

main :: IO ()
main = do
  putStrLn "Enter distance (meters):"
  dInput <- getLine
  putStrLn "Enter time (seconds):"
  tInput <- getLine

  let maybeDistance = readMaybe dInput :: Maybe Float
      maybeTime     = readMaybe tInput :: Maybe Float

  case (maybeDistance, maybeTime) of
    (Just d, Just t) ->
      case calculateVelocity d t of
        Just v  -> putStrLn $ "Velocity: " ++ show v ++ " m/s"
        Nothing -> putStrLn "Error: Time cannot be zero."
    _ -> putStrLn "Error: Invalid number entered."
```

---

### 🧪 Sample Output

```
Enter distance (meters):
100
Enter time (seconds):
20
Velocity: 5.0 m/s

Enter distance (meters):
hello
Enter time (seconds):
0
Error: Invalid number entered.
```

---

