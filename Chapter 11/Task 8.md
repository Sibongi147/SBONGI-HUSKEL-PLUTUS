-- HC11T8: Write a program that reads a number and tells the user if it's even or odd.
```haskell

main :: IO ()
main = do
  putStrLn "Enter a number:"
  input <- getLine
  let number = read input :: Int
  if even number
    then putStrLn "The number is even."
    else putStrLn "The number is odd."
```

---

### ✅ Explanation:

* `getLine` reads user input as a string.
* `read input :: Int` converts the string to an integer.
* `even` is a built-in Haskell function that checks if a number is divisible by 2.
* Based on the result, it prints whether the number is even or odd.

---

### 🧪 Example Interaction:

```
Enter a number:
7
The number is odd.
```
