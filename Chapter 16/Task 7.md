 HC16T7


---

### 🔍 Check Element Existence in a List

```haskell
-- Function to check if an element exists in a list
elementExists :: Eq a => a -> [a] -> Bool
elementExists x xs = x `elem` xs

-- Main function to test it interactively
main :: IO ()
main = do
    putStrLn "Enter a list of integers separated by spaces:"
    listInput <- getLine
    putStrLn "Enter the number to search for:"
    targetInput <- getLine

    let numbers = map read $ words listInput :: [Int]
        target  = read targetInput :: Int

    if elementExists target numbers
        then putStrLn "Yes, the element exists in the list."
        else putStrLn "No, the element is not in the list."
```

---

### 🧠 How It Works
- `elem` is a built-in Haskell function that checks for membership.
- `elementExists x xs = x \`elem\` xs` is just a wrapper for clarity.
- The `Eq a =>` constraint ensures the function works for any type that supports equality comparison.

---

### 🧪 Example Input
```
Enter a list of integers separated by spaces:
1 2 3 4 5
Enter the number to search for:
3
```

Output:
```
Yes, the element exists in the list.
```

