-- HC11T1: Write a program that asks the user for their name and prints a greeting.

```haskell
-- Greeting.hs
main :: IO ()
main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Hello, " ++ name ++ "! Welcome to Haskell!")
```

---

### How to Run

1. Save the file as `Greeting.hs`.
2. Open a terminal in the folder containing `Greeting.hs`.
3. Compile:

```bash
ghc Greeting.hs -o greeting
```

4. Run:

```bash
./greeting     # Linux / macOS
greeting.exe   # Windows
```

### Example Run

```
What is your name?
Sibongile
Hello, Sibongile! Welcome to Haskell!
```


