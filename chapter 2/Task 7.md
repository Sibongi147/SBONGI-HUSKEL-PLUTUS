HC2T7 - Task 7: Boolean Expressions

✅ Boolean expressions for:

* `True` using `&&`
* `False` using `||`
* `True` using `not`
* A comparison that returns `False`

It also includes a `main` function to demonstrate and print the results.

```haskell
-- Boolean expressions

-- True using &&
trueWithAnd :: Bool
trueWithAnd = True && True

-- False using ||
falseWithOr :: Bool
falseWithOr = False || False

-- True using not
trueWithNot :: Bool
trueWithNot = not False

-- A comparison that returns False
comparisonIsFalse :: Bool
comparisonIsFalse = 10 < 5

-- Main function to print the results
main :: IO ()
main = do
    putStrLn $ "True using &&: " ++ show trueWithAnd
    putStrLn $ "False using ||: " ++ show falseWithOr
    putStrLn $ "True using not: " ++ show trueWithNot
    putStrLn $ "Comparison 10 < 5 returns: " ++ show comparisonIsFalse
```

---

### 🧪 Expected Output:

```
True using &&: True
False using ||: False
True using not: True
Comparison 10 < 5 returns: False
```
