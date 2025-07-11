HC9T9: Check for Element in a Sequence
```haskell
-- Define the recursive data type Sequence
data Sequence a = End | Node a (Sequence a)
    deriving (Show)

-- Define the elemSeq function to check for membership
elemSeq :: Eq a => a -> Sequence a -> Bool
elemSeq _ End = False
elemSeq x (Node y ys)
    | x == y    = True
    | otherwise = elemSeq x ys

-- Example sequence
exampleSeq :: Sequence Int
exampleSeq = Node 1 (Node 2 (Node 3 End))

-- Main function to test elemSeq
main :: IO ()
main = do
    print $ elemSeq 2 exampleSeq   -- True
    print $ elemSeq 5 exampleSeq   -- False
```

---

### ✅ Explanation:

* `elemSeq` recursively checks each `Node`:

  * If the value matches, it returns `True`.
  * Otherwise, it continues with the rest of the sequence.
* Requires `Eq a =>` constraint so values can be compared.

---

### 🧪 Expected Output:

```
True
False
```
