HC2T2 - Task 2: Function Type Signatures

* Defines **function signatures**
* Implements the functions:

  * `add`: adds two integers
  * `isEven`: checks if an integer is even
  * `concatStrings`: concatenates two strings
* Includes a `main` function to test them

```haskell
-- add: Takes two Int values and returns their sum
add :: Int -> Int -> Int
add x y = x + y

-- isEven: Takes an Int and returns True if it's even
isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

-- concatStrings: Takes two Strings and returns their concatenation
concatStrings :: String -> String -> String
concatStrings s1 s2 = s1 ++ s2

-- Main function to test the above
main :: IO ()
main = do
    -- Test add
    let sumResult = add 5 7
    putStrLn $ "add 5 7 = " ++ show sumResult

    -- Test isEven
    putStrLn $ "isEven 4 = " ++ show (isEven 4)
    putStrLn $ "isEven 9 = " ++ show (isEven 9)

    -- Test concatStrings
    let greeting = concatStrings "Hello, " "Haskell!"
    putStrLn $ "concatStrings \"Hello, \" \"Haskell!\" = " ++ greeting
```

---

### ✅ Explanation

| Function        | Signature                    | Purpose                          |
| --------------- | ---------------------------- | -------------------------------- |
| `add`           | `Int -> Int -> Int`          | Adds two integers                |
| `isEven`        | `Int -> Bool`                | Returns `True` if number is even |
| `concatStrings` | `String -> String -> String` | Joins two strings                |

---

### 🧪 Sample Output:

```
add 5 7 = 12
isEven 4 = True
isEven 9 = False
concatStrings "Hello, " "Haskell!" = Hello, Haskell!
```
