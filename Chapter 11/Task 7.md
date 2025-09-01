-- HC11T7: Write a program that prints a list of options to the user and executes different code based on the user's choice.
```haskell

Here’s a **simple menu-driven Haskell program** that prints a list of options, takes the user’s choice, and executes different code accordingly:

```haskell
-- Menu.hs
main :: IO ()
main = do
    putStrLn "Choose an option:"
    putStrLn "1. Greet"
    putStrLn "2. Add two numbers"
    putStrLn "3. Exit"
    choice <- getLine
    case choice of
        "1" -> do
            putStrLn "What is your name?"
            name <- getLine
            putStrLn ("Hello, " ++ name ++ "!")
        "2" -> do
            putStrLn "Enter the first number:"
            n1 <- getLine
            putStrLn "Enter the second number:"
            n2 <- getLine
            let a = read n1 :: Int
                b = read n2 :: Int
            putStrLn ("The sum is: " ++ show (a + b))
        "3" -> putStrLn "Goodbye!"
        _   -> putStrLn "Invalid choice! Please try again."
```

---

### ✅ How to Run

1. Save the file as `Menu.hs`.
2. Compile:

```bash
ghc Menu.hs -o menu
```

3. Run:

```bash
./menu      # Linux/macOS
menu.exe    # Windows
```

**Or run directly without compiling:**

```bash
runghc Menu.hs
```

---

### 💻 Example Run

```
Choose an option:
1. Greet
2. Add two numbers
3. Exit
1
What is your name?
Bongi
Hello, Bongi!
```

or

```
Choose an option:
1. Greet
2. Add two numbers
3. Exit
2
Enter the first number:
5
Enter the second number:
7
The sum is: 12
```

---


