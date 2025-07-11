HC9T8: Define a Recursive Sequence Data Type
  ```haskell
-- Define a recursive data type Sequence
data Sequence a = End | Node a (Sequence a)
    deriving (Show)

-- Example sequence: 1 -> 2 -> 3 -> End
exampleSeq :: Sequence Int
exampleSeq = Node 1 (Node 2 (Node 3 End))

-- Function to convert Sequence to a regular list for display
toList :: Sequence a -> [a]
toList End = []
toList (Node x xs) = x : toList xs

-- Main function to print the sequence as a list
main :: IO ()
main = do
    putStrLn "Sequence contents:"
    print $ toList exampleSeq
```

---

### ✅ Explanation:

* `Sequence a` is a **recursive parametric data type**:

  * `End` marks the end of the sequence.
  * `Node a (Sequence a)` contains a value and the rest of the sequence.
* `exampleSeq` demonstrates a sequence of 3 integers.
* `toList` converts it to a standard Haskell list for easier printing.

---

### 🧪 Expected Output:

```
Sequence contents:
[1,2,3]
```
