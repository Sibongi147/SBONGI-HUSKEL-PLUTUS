HC13T5: Refactor the sumNonEmpty function to restrict the visibility of helper functions like error messages in the module export list. 

---

```haskell
module Main where

-- local "module-like" code
sumNonEmpty :: Num a => [a] -> a
sumNonEmpty [] = error "sumNonEmpty: cannot sum an empty list"
sumNonEmpty xs = sum xs

main :: IO ()
main = do
    putStrLn "Testing sumNonEmpty:"
    print (sumNonEmpty [1, 2, 3, 4])   -- should print 10
    print (sumNonEmpty [10])           -- should print 10
    -- Uncomment the next line to see the error in action:
    -- print (sumNonEmpty [])
```

---

## 🛠 Run it

### Option 1 — without compiling

```bash
runghc Main.hs
```

### Option 2 — compile to executable

```bash
ghc Main.hs -o sumtest
./sumtest        # Linux/macOS
sumtest.exe      # Windows
```

---

✅ Expected output:

```
Testing sumNonEmpty:
10
10
```

---


