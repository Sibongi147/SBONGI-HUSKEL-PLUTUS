HC2T4 - Task 4: Converting Between Infix and Prefix Notations

✅ Converts **infix expressions to prefix notation**
✅ Converts **prefix function calls to infix notation**
✅ Includes a `main` function to demonstrate correct output

```haskell
-- Prefix notation for infix expressions
prefixAdd :: Int
prefixAdd = (+) 5 3        -- Equivalent to 5 + 3

prefixMultiply :: Int
prefixMultiply = (*) 10 4  -- Equivalent to 10 * 4

prefixAnd :: Bool
prefixAnd = (&&) True False -- Equivalent to True && False

-- Infix notation for prefix functions
infixAdd :: Int
infixAdd = 7 + 2           -- Equivalent to (+) 7 2

infixMultiply :: Int
infixMultiply = 6 * 5      -- Equivalent to (*) 6 5

infixAnd :: Bool
infixAnd = True && False   -- Equivalent to (&&) True False

-- Main function to display results
main :: IO ()
main = do
    -- Results from prefix notation
    putStrLn $ "Prefix (+) 5 3 = " ++ show prefixAdd
    putStrLn $ "Prefix (*) 10 4 = " ++ show prefixMultiply
    putStrLn $ "Prefix (&&) True False = " ++ show prefixAnd

    -- Results from infix notation
    putStrLn $ "Infix 7 + 2 = " ++ show infixAdd
    putStrLn $ "Infix 6 * 5 = " ++ show infixMultiply
    putStrLn $ "Infix True && False = " ++ show infixAnd
```

---

### 🧾 Output When Run:

```
Prefix (+) 5 3 = 8
Prefix (*) 10 4 = 40
Prefix (&&) True False = False
Infix 7 + 2 = 9
Infix 6 * 5 = 30
Infix True && False = False
```

---
