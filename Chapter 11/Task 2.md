-- HC11T2: Write a program that reads a line of input and prints the number of characters in that line.

```haskell
-- DoubleNumber.hs
main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let number = read input :: Int
        doubled = number * 2
    putStrLn ("The number multiplied by 2 is: " ++ show doubled)
```

---

### How to Run

1. Save the file as `DoubleNumber.hs`.
2. Open terminal in the folder containing `DoubleNumber.hs`.
3. Compile:

```bash
ghc DoubleNumber.hs -o doublenumber
```

4. Run:

```bash
./doublenumber     # Linux / macOS
doublenumber.exe   # Windows
```



### Example Run

```
Enter a number:
7
The number multiplied by 2 is: 14
```

---

