-- HC11T9: Write a program that reads two numbers and prints their sum.
```haskell

main :: IO ()
main = do
  putStrLn "Enter the first number:"
  input1 <- getLine
  putStrLn "Enter the second number:"
  input2 <- getLine
  let num1 = read input1 :: Int
      num2 = read input2 :: Int
      total = num1 + num2
  putStrLn $ "The sum is: " ++ show total
```

---

### ✅ Explanation:

* Prompts the user to enter two numbers.
* Uses `read` to convert inputs from `String` to `Int`.
* Calculates the sum and prints it using `show`.

---

### 🧪 Example Interaction:

```
Enter the first number:
10
Enter the second number:
25
The sum is: 35
```
