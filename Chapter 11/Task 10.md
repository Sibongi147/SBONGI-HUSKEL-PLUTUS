-- HC11T10: Write a program that reads input from the user and reverses the string.
```haskell

main :: IO ()
main = do
  putStrLn "Enter a string:"
  input <- getLine
  let reversed = reverse input
  putStrLn $ "Reversed string: " ++ reversed
```

---

### ✅ Explanation:

* Uses `getLine` to read a line of input from the user.
* Applies the built-in `reverse` function.
* Outputs the reversed string using `putStrLn`.

---

### 🧪 Example Interaction:

```
Enter a string:
Haskell
Reversed string: lleksaH
```
