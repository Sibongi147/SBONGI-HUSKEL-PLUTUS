HC18T2

### ✅ Haskell Code (Markdown-ready):

```haskell
-- Define the binary tree data type
data Tree a = Empty
            | Node a (Tree a) (Tree a)
            deriving (Show)

-- Implement the Functor instance
instance Functor Tree where
  fmap _ Empty = Empty
  fmap f (Node val left right) =
    Node (f val) (fmap f left) (fmap f right)

-- Example usage
exampleTree :: Tree Int
exampleTree = Node 1 (Node 2 Empty Empty) (Node 3 Empty Empty)

-- Apply a function over the tree
main :: IO ()
main = do
  let doubledTree = fmap (*2) exampleTree
  print doubledTree
```

### 🧠 Explanation:

* **`fmap` for Empty** returns `Empty`.
* **`fmap f (Node val left right)`** applies `f` to the current value and recursively to the left and right subtrees.

### 🧪 Output:

For the `exampleTree = Node 1 (Node 2 Empty Empty) (Node 3 Empty Empty)`, the output after doubling each value is:

```
Node 2 (Node 4 Empty Empty) (Node 6 Empty Empty)
```
