HC16T8

```haskell
-- Insertion function: inserts an element into a sorted list
insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys)
    | x <= y    = x : y : ys
    | otherwise = y : insert x ys

-- Insertion sort: recursively sorts the list
insertionSort :: [Int] -> [Int]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)

-- Main function to test it interactively
main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine
    let numbers = map read $ words input :: [Int]
    let sorted = insertionSort numbers
    putStrLn $ "Sorted list: " ++ show sorted
```

---

### 🧠 How It Works
- `insert x xs`: places `x` into the correct position in a sorted list `xs`.
- `insertionSort`: recursively sorts the tail and inserts the head.
- `map read $ words input`: converts user input into a list of integers.

---

### 🧪 Example Input
```
Enter a list of integers separated by spaces:
5 3 8 1 2
```

Output:
```
Sorted list: [1,2,3,5,8]
```
