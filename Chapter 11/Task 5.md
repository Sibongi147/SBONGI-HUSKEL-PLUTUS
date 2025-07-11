-- HC11T5: Write a program that repeatedly asks the user for input until they enter "quit".
```haskell
-- HC11T5: Program that repeatedly asks for input until "quit" is entered

main :: IO ()
main = loop
  where
    loop = do
      putStrLn "Enter something (type \"quit\" to exit):"
      input <- getLine
      if input == "quit"
        then putStrLn "Goodbye!"
        else do
          putStrLn $ "You entered: " ++ input
          loop
```

---

### ✅ Explanation:

* The program uses recursion with `loop` to repeatedly ask for input.
* When the user types `"quit"`, it exits.
* Otherwise, it echoes the input and asks again.

---

### 🧪 Example interaction:

```
Enter something (type "quit" to exit):
Hello
You entered: Hello
Enter something (type "quit" to exit):
World
You entered: World
Enter something (type "quit" to exit):
quit
Goodbye!
```
