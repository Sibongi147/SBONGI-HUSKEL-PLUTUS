HC4T6 - Task 6: Identify List Contents Using Pattern Matching
```haskell
-- whatsInsideThisList: Returns a message based on the number of elements in the list
whatsInsideThisList :: [a] -> String
whatsInsideThisList xs
    | length xs == 0 = "The list is empty."
    | length xs == 1 = "The list has one element."
    | length xs > 1  = "The list has multiple elements."

-- Main function to test whatsInsideThisList
main :: IO ()
main = do
    putStrLn $ whatsInsideThisList ([] :: [Int])
    putStrLn $ whatsInsideThisList [42]
    putStrLn $ whatsInsideThisList [1,2,3]
```

---

### Expected Output:

```
The list is empty.
The list has one element.
The list has multiple elements.
```

```
```
