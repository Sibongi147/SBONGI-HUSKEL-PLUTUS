HC6T1: Factorial (Recursive)
```haskell
-- factorial: Computes the factorial of a non-negative integer recursively
factorial :: Integer -> Integer
factorial 0 = 1
factorial n
    | n > 0     = n * factorial (n - 1)
    | otherwise = error "Negative input not allowed"

-- Main function to test factorial
main :: IO ()
main = do
    print $ factorial 0    -- 1
    print $ factorial 5    -- 120
    print $ factorial 10   -- 3628800
```

---

### ✅ Explanation:

* Base case: `factorial 0 = 1`
* Recursive case: `factorial n = n * factorial (n-1)` for `n > 0`
* Error on negative input to avoid infinite recursion

---

### 🧪 Expected Output:

```
1
120
3628800
```
