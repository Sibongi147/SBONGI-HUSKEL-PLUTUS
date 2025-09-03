HC16T4

### 🔍 Filter Even Numbers in Haskell

```haskell
-- Function to filter even numbers
filterEvens :: [Int] -> [Int]
filterEvens xs = filter even xs

-- Main function to test it interactively
main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    input <- getLine
    let numbers = map read $ words input :: [Int]
    let evens = filterEvens numbers
    putStrLn $ "Even numbers: " ++ show evens
```

---

### 🧠 How It Works
- `words input`: splits the input string into individual numbers.
- `map read`: converts each string to an `Int`.
- `filter even xs`: keeps only the numbers where `even x == True`.

---

### 🧪 Example Input
```
Enter a list of integers separated by spaces:
1 2 3 4 5 6
```

Output:
```
Even numbers: [2,4,6]
```

