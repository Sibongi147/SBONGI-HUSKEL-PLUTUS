-- HC11T1: Write a program that asks the user for their name and prints a greeting.
```haskell
-- HC11T1: Simple greeting program

main :: IO ()
main = do
  putStrLn "What is your name?"
  name <- getLine
  putStrLn $ "Hello, " ++ name ++ "!"
```

---

### ✅ Explanation:

* `getLine` reads a line of input from the user.
* The program then prints a greeting with the user's name.

---

### 🧪 Example interaction:

```
What is your name?
Alice
Hello, Alice!
```
