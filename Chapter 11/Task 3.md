-- HC11T3: Write a program that asks the user for a number, reads it, and prints that number multiplied by 2.

```haskell
-- MultiplyByTwo.hs
main :: IO ()
main = do
    putStrLn "Please enter a number:"
    input <- getLine
    let number = read input :: Int
        doubled = number * 2
    putStrLn ("The number multiplied by 2 is: " ++ show doubled)
```

---

### How to Run

1. Save as `MultiplyByTwo.hs`.
2. Open a terminal in the folder containing the file.
3. Compile:

```bash
ghc MultiplyByTwo.hs -o multiplyByTwo
```

4. Run:

```bash
./multiplyByTwo     # Linux/macOS
multiplyByTwo.exe   # Windows
```



### Example Run

```
Please enter a number:
8
The number multiplied by 2 is: 16
```

---


