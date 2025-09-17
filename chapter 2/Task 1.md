HC2T1 - Task 1: Checking Types in GHCi

1. ✅ **The expressions**
2. 🧠 **Expected types** (before checking in GHCi)
3. 🧪 **How to check them in GHCi**

```haskell

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
