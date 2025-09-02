HC14T5: Write a Haskell program that uses a custom data type Result a and demonstrate pattern matching using the @ symbol. 

## ✅ Haskell Program: `Result a` and As-Pattern

```haskell
-- Enable strict warnings
{-# OPTIONS_GHC -Wall #-}

-- Define a custom data type
data Result a = Success a | Failure String
    deriving Show

-- Function that demonstrates pattern matching with @
describeResult :: Result Int -> String
describeResult r@(Success value) =
    "Got a Success with value " ++ show value ++ ", full result: " ++ show r
describeResult (Failure msg) =
    "Operation failed with message: " ++ msg

main :: IO ()
main = do
    let r1 = Success 42
        r2 = Failure "Something went wrong"

    putStrLn $ describeResult r1
    putStrLn $ describeResult r2
```

---

### 🔹 How it works

1. `data Result a = Success a | Failure String`

   * A generic result type: either `Success a` or `Failure String`.

2. `r@(Success value)` is an **as-pattern**:

   * `r` captures the **whole `Success` value**.
   * `value` captures just the inner value.
   * Lets you access both at once.

3. Pattern matching handles both `Success` and `Failure` cases.

4. `describeResult` prints a message based on the pattern.

---

### 🔹 Example Output

```
Got a Success with value 42, full result: Success 42
Operation failed with message: Something went wrong
```

---





