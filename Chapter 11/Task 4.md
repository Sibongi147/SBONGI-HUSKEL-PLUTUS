-- HC11T4: Write a program that reads two lines of input and prints them concatenated.
```haskell
-- HC11T4: Program to read two lines and print their concatenation

main :: IO ()
main = do
  putStrLn "Enter the first line:"
  line1 <- getLine
  putStrLn "Enter the second line:"
  line2 <- getLine
  putStrLn $ "Concatenated result: " ++ (line1 ++ line2)
```

---

### ✅ Explanation:

* Reads two lines using `getLine`.
* Concatenates them using `(++)`.
* Prints the concatenated string.

---

### 🧪 Example interaction:

```
Enter the first line:
Hello
Enter the second line:
World
Concatenated result: HelloWorld
```
