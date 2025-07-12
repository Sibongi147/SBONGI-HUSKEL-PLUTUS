HC18T4

---

### ✅ Haskell Code (markdown-ready):

```haskell
-- Define the binary tree type
data Tree a = Empty
            | Node a (Tree a) (Tree a)
            deriving (Show)

-- Implement the Functor instance
instance Functor Tree where
  fmap _ Empty = Empty
  fmap f (Node val left right) =
    Node (f val) (fmap f left) (fmap f right)

-- Define the incrementTreeValues function
incrementTreeValues :: Num a => Tree a -> Tree a
incrementTreeValues = fmap (+1)

-- Example tree
exampleTree :: Tree Int
exampleTree = Node 10 (Node 5 Empty Empty) (Node 3 Empty Empty)

-- Main to demonstrate usage
main :: IO ()
main = do
  print $ incrementTreeValues exampleTree
```

---

### 🧠 Explanation:

* `incrementTreeValues` uses `fmap (+1)` to apply `(+1)` to every value inside the tree.
* This leverages the `Functor` instance you defined for `Tree`.

---

### 🧪 Output:

For the example tree:

```haskell
Node 10 (Node 5 Empty Empty) (Node 3 Empty Empty)
```

The output would be:

```haskell
Node 11 (Node 6 Empty Empty) (Node 4 Empty Empty)
```
