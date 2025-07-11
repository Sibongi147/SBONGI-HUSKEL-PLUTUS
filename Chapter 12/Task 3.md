HC12T3
```haskell
-- Program that defines a factorial function and prints the result

-- Recursive factorial function
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
  let number = 5
  putStrLn $ "The factorial of " ++ show number ++ " is " ++ show (factorial number)
```

---

### ✅ Explanation:

* `factorial` is a recursive function:

  * Base case: `factorial 0 = 1`
  * Recursive case: `n * factorial (n - 1)`
* `main` calls `factorial 5` and prints the result using `putStrLn`.

---

### 🧪 Output:

```
The factorial of 5 is 120
```
