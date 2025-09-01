HC13T4: Write a Haskell module named SumNonEmpty that defines a function sumNonEmpty, which returns an error if called on an empty list.

---

```haskell
-- SumNonEmpty.hs
-- This file defines sumNonEmpty and demonstrates it in main.

module Main where

-- | Sum a non-empty list of numbers.
--   If the list is empty, throw an error.
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

## 🛠 How to Run

1. Save this code as **`SumNonEmpty.hs`**.
   (Notice: it already contains a `main` function, so it will compile/run properly.)

2. Compile it:

```bash
ghc SumNonEmpty.hs -o sumtest
```

3. Run it:

```bash
./sumtest      # on Linux/macOS
sumtest.exe    # on Windows
```

Or run without compiling:

```bash
runghc SumNonEmpty.hs
```

---

✅ Expected Output:

```
Testing sumNonEmpty:
10
10
```

