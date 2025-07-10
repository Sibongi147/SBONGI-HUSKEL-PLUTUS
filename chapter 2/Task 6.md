HC2T6 - Task 6: Understanding Int vs Integer

* Defines `smallNumber` as an `Int` with the value `2^62`
* Defines `bigNumber` as an `Integer` with the value `2^127`
* Shows how evaluating `2^64 :: Int` causes an overflow if `Int` is 64-bit
* Includes a `main` function that safely prints results using both types

```haskell
-- smallNumber: Int type, with value 2^62 (within Int range on 64-bit systems)
smallNumber :: Int
smallNumber = 2 ^ 62

-- bigNumber: Integer type, with value 2^127 (arbitrary precision)
bigNumber :: Integer
bigNumber = 2 ^ 127

-- Note:
-- Trying to evaluate 2^64 :: Int may cause overflow on systems
-- where Int is limited to 64 bits (maxBound :: Int = 9223372036854775807)

-- Uncommenting the following will likely overflow:
-- overflowExample :: Int
-- overflowExample = 2 ^ 64  -- This exceeds maxBound :: Int on most systems

main :: IO ()
main = do
    putStrLn $ "smallNumber (2^62 :: Int): " ++ show smallNumber
    putStrLn $ "bigNumber (2^127 :: Integer): " ++ show bigNumber

    -- Safely show 2^64 using Integer
    putStrLn $ "2^64 using Integer: " ++ show (2 ^ 64 :: Integer)
```

---

### 🧪 What Happens in GHCi

If you try this in GHCi:

```haskell
Prelude> 2^64 :: Int
```

You will likely get a **negative number or incorrect result** due to **overflow**, like:

```
-9223372036854775808
```

That’s because `Int` has a fixed upper bound (`maxBound :: Int = 2^63 - 1` on most 64-bit systems), so `2^64` wraps around and overflows.

---

### ✅ Output from Safe Code:

```
smallNumber (2^62 :: Int): 4611686018427387904
bigNumber (2^127 :: Integer): 170141183460469231731687303715884105728
2^64 using Integer: 18446744073709551616
```
