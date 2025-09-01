HC12T6

```haskell
-- SortList.hs
import Data.List (sort)

main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    putStrLn "Sorted list in ascending order:"
    print (sort numbers)
```

---

### ✅ How to Run

**Compile:**

```bash
ghc SortList.hs -o sortlist
./sortlist
```

**Run without compiling:**

```bash
runghc SortList.hs
```

---

### 💻 Example Run

```
Enter a list of integers separated by spaces:
5 1 9 3 7 2
Sorted list in ascending order:
[1,2,3,5,7,9]
```

---


