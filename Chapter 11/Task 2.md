-- HC11T2: Write a program that reads a line of input and prints the number of characters in that line.
```haskell
-- HC11T2: Program to count characters in a line of input

main :: IO ()
main = do
  putStrLn "Enter a line of text:"
  line <- getLine
  putStrLn $ "Number of characters: " ++ show (length line)
```

---

### ✅ Explanation:

* `getLine` reads a line of input.
* `length` computes the number of characters in the input string.
* The result is printed using `show` to convert the number to a string.

---

### 🧪 Example interaction:

```
Enter a line of text:
Hello, Haskell!
Number of characters: 15
```
