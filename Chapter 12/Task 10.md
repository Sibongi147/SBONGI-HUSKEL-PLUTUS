HC12T10

---

### Single-file, fully working Haskell program

```haskell
-- MathDemo.hs
-- Demonstrates basic math operations in Haskell without modules

-- Addition
add :: Num a => a -> a -> a
add x y = x + y

-- Subtraction
subtract' :: Num a => a -> a -> a
subtract' x y = x - y

-- Multiplication
multiply :: Num a => a -> a -> a
multiply x y = x * y

-- Division
divide :: Fractional a => a -> a -> a
divide x y = x / y

-- Main function
main :: IO ()
main = do
    putStrLn "Demonstrating basic math operations:"
    putStrLn ("2 + 3 = " ++ show (add 2 3))
    putStrLn ("10 - 4 = " ++ show (subtract' 10 4))
    putStrLn ("6 * 7 = " ++ show (multiply 6 7))
    putStrLn ("20 / 5 = " ++ show (divide 20 5))
```

---

### How to Run

1. Save the file as `MathDemo.hs`.
2. Open terminal in the folder containing `MathDemo.hs`.
3. Compile:

```bash
ghc MathDemo.hs -o mathdemo
```

4. Run:

```bash
./mathdemo     # Linux / macOS
mathdemo.exe   # Windows
```

---

### Example Output

```
Demonstrating basic math operations:
2 + 3 = 5
10 - 4 = 6
6 * 7 = 42
20 / 5 = 4.0
```

---

✅ This **will run**, because it has no external module dependencies.
