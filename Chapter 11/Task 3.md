-- HC11T3: Write a program that asks the user for a number, reads it, and prints that number multiplied by 2.
```haskell
-- HC11T3: Program to read a number and print it multiplied by 2

main :: IO ()
main = do
  putStrLn "Enter a number:"
  input <- getLine
  let number = read input :: Int
  putStrLn $ "Twice the number is: " ++ show (number * 2)
```

---

### ✅ Explanation:

* Reads user input as a string with `getLine`.
* Converts the input to an `Int` using `read`.
* Multiplies the number by 2 and prints the result.

---

### 🧪 Example interaction:

```
Enter a number:
7
Twice the number is: 14
```
