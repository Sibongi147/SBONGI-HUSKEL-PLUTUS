HC2T4 - Task 4: Converting Between Infix and Prefix Notations

* Converts **infix expressions** (`5 + 3`, etc.) to **prefix notation**
* Converts **prefix function applications** (`(+) 7 2`, etc.) to **infix notation**
* Includes a `main` function to demonstrate the results

```haskell
-- Prefix notation for infix expressions
prefixSum :: Int
prefixSum = (+) 5 3

prefixProduct :: Int
prefixProduct = (*) 10 4

prefixLogic :: Bool
prefixLogic = (&&) True False

-- Infix notation for prefix functions
infixSum :: Int
infixSum = 7 + 2

infixProduct :: Int
infixProduct = 6 * 5

infixLogic :: Bool
infixLogic = True && False

-- Main function to show all results
main :: IO ()
main = do
    -- Prefix notation results
    putStrLn $ "Prefix (+) 5 3 = " ++ show prefixSum
    putStrLn $ "Prefix (*) 10 4 = " ++ show prefixProduct
    putStrLn $ "Prefix (&&) True False = " ++ show prefixLogic

    -- Infix notation results
    putStrLn $ "Infix 7 + 2 = " ++ show infixSum
    putStrLn $ "Infix 6 * 5 = " ++ show infixProduct
    putStrLn $ "Infix True && False = " ++ show infixLogic
```

---

### ✅ Explanation

| Expression        | Prefix Notation   | Result  |
| ----------------- | ----------------- | ------- |
| `5 + 3`           | `(+ ) 5 3`        | `8`     |
| `10 * 4`          | `(* ) 10 4`       | `40`    |
| `True && False`   | `(&&) True False` | `False` |
| `(+ ) 7 2`        | `7 + 2`           | `9`     |
| `(* ) 6 5`        | `6 * 5`           | `30`    |
| `(&&) True False` | `True && False`   | `False` |

---

### 🧪 Sample Output

```
Prefix (+) 5 3 = 8
Prefix (*) 10 4 = 40
Prefix (&&) True False = False
Infix 7 + 2 = 9
Infix 6 * 5 = 30
Infix True && False = False
```

