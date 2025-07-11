HC12T6
```haskell
import Data.List (sort)
import Data.Char (isSpace)

-- Program to read a list of integers, sort them, and print the result

main :: IO ()
main = do
  putStrLn "Enter a list of integers separated by spaces:"
  input <- getLine
  let numbers = map read (words input) :: [Int]
      sortedNumbers = sort numbers
  putStrLn "Sorted list:"
  print sortedNumbers
```

---

### ✅ Explanation:

* Uses `getLine` to read input as a string.
* `words` splits the string into a list of substrings.
* `map read` converts each substring to an `Int`.
* `sort` from `Data.List` sorts the list in ascending order.
* Prints the sorted list.

---

### 🧪 Example Interaction:

```
Enter a list of integers separated by spaces:
5 2 9 1 3
Sorted list:
[1,2,3,5,9]
```
