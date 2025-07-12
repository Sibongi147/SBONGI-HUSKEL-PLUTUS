HC15T8

---

### ✅ Haskell Code (Markdown-Compatible)

```haskell
-- Safe division using Either for detailed error reporting
safeDivide :: Float -> Float -> Either String Float
safeDivide _ 0 = Left "Error: Division by zero is not allowed."
safeDivide x y = Right (x / y)

-- Example usage
main :: IO ()
main = do
  putStrLn "Enter numerator:"
  numInput <- getLine
  putStrLn "Enter denominator:"
  denomInput <- getLine

  let maybeNum   = readMaybe numInput :: Maybe Float
      maybeDenom = readMaybe denomInput :: Maybe Float

  case (maybeNum, maybeDenom) of
    (Just x, Just y) ->
      case safeDivide x y of
        Right result -> putStrLn $ "Result: " ++ show result
        Left err     -> putStrLn err
    _ -> putStrLn "Invalid input: Please enter valid numbers."

-- Required import for readMaybe
import Text.Read (readMaybe)
```

---

### 🧪 Example Output

```
Enter numerator:
10
Enter denominator:
0
Error: Division by zero is not allowed.

Enter numerator:
foo
Enter denominator:
5
Invalid input: Please enter valid numbers.
```

---

