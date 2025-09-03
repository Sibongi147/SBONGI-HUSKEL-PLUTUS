HC15T8

```haskell
-- Required for safe input parsing
import Text.Read (readMaybe)

-- Division function using Either for error reporting
safeDivide :: Float -> Float -> Either String Float
safeDivide _ 0 = Left "Error: Division by zero is not allowed."
safeDivide x y = Right (x / y)

-- Main function for interactive input
main :: IO ()
main = do
    putStrLn "Enter numerator:"
    numInput <- getLine
    putStrLn "Enter denominator:"
    denomInput <- getLine

    let maybeNum = readMaybe numInput :: Maybe Float
        maybeDenom = readMaybe denomInput :: Maybe Float

    case (maybeNum, maybeDenom) of
        (Just x, Just y) ->
            case safeDivide x y of
                Right result -> putStrLn $ "Result: " ++ show result
                Left err     -> putStrLn err
        _ -> putStrLn "Invalid input: Please enter valid numbers."
```

### 🛠 How to Run It on OnlineGDB
 Paste the code into the editor.
 Click **Run**.
 Enter values when prompted.

