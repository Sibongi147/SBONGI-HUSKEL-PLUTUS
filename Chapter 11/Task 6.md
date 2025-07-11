HC11T6: Write a program that reads a line of input, converts it to uppercase, and prints it.
```haskell
-- HC11T6: Program to read input, convert to uppercase, and print it

import Data.Char (toUpper)

main :: IO ()
main = do
  putStrLn "Enter a line of text:"
  line <- getLine
  let upperLine = map toUpper line
  putStrLn $ "Uppercase: " ++ upperLine
```

---

### ✅ Explanation:

* Imports `toUpper` from `Data.Char`.
* Reads a line using `getLine`.
* Converts each character to uppercase using `map toUpper`.
* Prints the uppercase string.

---

### 🧪 Example interaction:

```
Enter a line of text:
Hello, Haskell!
Uppercase: HELLO, HASKELL!
```
