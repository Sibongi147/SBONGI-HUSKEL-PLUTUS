HC2T3 - Task 3: Immutable Variables
Sure! Below is a **Haskell code example in Markdown format** that:

* Defines **immutable variables** (`myAge`, `piValue`, `greeting`, `isHaskellFun`)
* Attempts to **redefine** one of them (which will result in a compile-time error if uncommented)

```haskell
-- Define immutable variables
myAge :: Int
myAge = 25

piValue :: Double
piValue = 3.14159

greeting :: String
greeting = "Hello, Haskell!"

isHaskellFun :: Bool
isHaskellFun = True

-- Uncommenting the following line will cause an error,
-- because variables in Haskell are immutable (cannot be reassigned)
-- myAge = 30  -- ❌ This will produce an error: Multiple declarations of ‘myAge’

-- Main function to print the values
main :: IO ()
main = do
    putStrLn $ "My age: " ++ show myAge
    putStrLn $ "Value of pi: " ++ show piValue
    putStrLn $ greeting
    putStrLn $ "Is Haskell fun? " ++ show isHaskellFun
```

---

### ✅ Explanation

| Variable       | Type     | Value               |
| -------------- | -------- | ------------------- |
| `myAge`        | `Int`    | `25`                |
| `piValue`      | `Double` | `3.14159`           |
| `greeting`     | `String` | `"Hello, Haskell!"` |
| `isHaskellFun` | `Bool`   | `True`              |

---

### 🧪 What Happens If You Try to Modify One?

If you uncomment the line:

```haskell
myAge = 30
```

You’ll get a compile-time error like:

```
error: Multiple declarations of ‘myAge’
```

Because **Haskell variables are immutable** — once defined, they cannot be changed or reassigned.

---

Let me know if you want to use user input instead, or define these inside a function or `where`/`let` block!
