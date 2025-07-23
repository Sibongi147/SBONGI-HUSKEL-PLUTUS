HC6T10: Digits of a Number(Recursive)
```haskell
-- digits: Recursively converts a non-negative number into a list of its digits
digits :: Integer -> [Integer]
digits n
    | n < 10    = [n]
    | n >= 10   = digits (n `div` 10) ++ [n `mod` 10]
    | otherwise = error "Negative input not allowed"

-- Main function to test digits
main :: IO ()
main = do
    print $ digits 12345    -- [1,2,3,4,5]
    print $ digits 7        -- [7]
    print $ digits 0        -- [0]
```

---

### ✅ Explanation:

* Base case: single digit number returns a singleton list.
* Recursive case: divide the number by 10 and recurse, then append the last digit.
* Error on negative input to avoid invalid cases.

---

### 🧪 Expected Output:

```
[1,2,3,4,5]
[7]
[0]
```

```
```
