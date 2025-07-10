HC2T1 - Task 1: Checking Types in GHCi

1. ✅ **The expressions**
2. 🧠 **Expected types** (before checking in GHCi)
3. 🧪 **How to check them in GHCi**

```haskell
-- Expression: 42
-- Expected Type: Num a => a
-- Reason: It's a numeric literal and can be any number type (Int, Integer, Double, etc.)

-- Expression: 3.14
-- Expected Type: Fractional a => a
-- Reason: It's a floating-point literal, so it can be Float or Double

-- Expression: "Haskell"
-- Expected Type: [Char]
-- Reason: It's a string, which is just a list of characters in Haskell

-- Expression: 'Z'
-- Expected Type: Char
-- Reason: It's a single character in single quotes

-- Expression: True && False
-- Expected Type: Bool
-- Reason: It's a logical expression that operates on booleans

-- You can test these types in GHCi using the :type (or :t) command:

main :: IO ()
main = do
    putStrLn "Check the expected types in GHCi using the following commands:"
    putStrLn ":type 42         -- Expected: Num a => a"
    putStrLn ":type 3.14       -- Expected: Fractional a => a"
    putStrLn ":type \"Haskell\"  -- Expected: [Char]"
    putStrLn ":type 'Z'        -- Expected: Char"
    putStrLn ":type True && False -- Expected: Bool"
```

---

### ✅ How to Run This:

Open **GHCi** and type:

```haskell
:type 42
:type 3.14
:type "Haskell"
:type 'Z'
:type True && False
```

---

### 🧾 Example Output in GHCi:

```
> :type 42
42 :: Num a => a

> :type 3.14
3.14 :: Fractional a => a

> :type "Haskell"
"Haskell" :: [Char]

> :type 'Z'
'Z' :: Char

> :type True && False
True && False :: Bool
```
