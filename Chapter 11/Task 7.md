-- HC11T7: Write a program that prints a list of options to the user and executes different code based on the user's choice.
```haskell

main :: IO ()
main = menuLoop

menuLoop :: IO ()
menuLoop = do
  putStrLn "\n=== MENU ==="
  putStrLn "1. Say Hello"
  putStrLn "2. Show a Fun Fact"
  putStrLn "3. Exit"
  putStr "Enter your choice (1-3): "
  choice <- getLine
  case choice of
    "1" -> do
      putStrLn "Hello! Hope you're having a great day!"
      menuLoop
    "2" -> do
      putStrLn "Fun Fact: Haskell is named after the logician Haskell Curry!"
      menuLoop
    "3" -> putStrLn "Goodbye!"
    _   -> do
      putStrLn "Invalid choice. Please try again."
      menuLoop
```

---

### ✅ How It Works:

* The `menuLoop` function displays the menu and handles the user's choice.
* It continues looping until the user selects option `"3"` to exit.
* Each valid choice executes a different action; invalid inputs prompt the user to try again.

---

### 🧪 Sample Interaction:

```
=== MENU ===
1. Say Hello
2. Show a Fun Fact
3. Exit
Enter your choice (1-3): 2
Fun Fact: Haskell is named after the logician Haskell Curry!

=== MENU ===
1. Say Hello
2. Show a Fun Fact
3. Exit
Enter your choice (1-3): 3
Goodbye!
```
