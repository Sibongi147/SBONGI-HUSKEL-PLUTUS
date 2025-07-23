-- HC6T2:  Fibonacci (Recursive)
```haskell
-- fibonacci: Computes the nth Fibonacci number recursively
fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n
    | n > 1     = fibonacci (n - 1) + fibonacci (n - 2)
    | otherwise = error "Negative input not allowed"

-- Main function to test fibonacci
main :: IO ()
main = do
    print $ fibonacci 0    -- 0
    print $ fibonacci 1    -- 1
    print $ fibonacci 5    -- 5
    print $ fibonacci 10   -- 55
```

---

### ✅ Explanation:

* Base cases: `fibonacci 0 = 0`, `fibonacci 1 = 1`
* Recursive case: sum of previous two Fibonacci numbers for `n > 1`
* Error for negative input to prevent invalid cases

---

### 🧪 Expected Output:

```
0
1
5
55
```
