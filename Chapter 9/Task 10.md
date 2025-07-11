HC9T10: Binary Search Tree Data Type
```haskell
-- Define the BST (Binary Search Tree) data type
data BST a = Empty
           | Node a (BST a) (BST a)
           deriving (Show)

-- Example BST manually constructed: 
--        10
--       /  \
--      5   15
exampleBST :: BST Int
exampleBST = Node 10
                (Node 5 Empty Empty)
                (Node 15 Empty Empty)

-- Main function to print the example BST
main :: IO ()
main = do
    putStrLn "Example BST:"
    print exampleBST
```

---

### ✅ Explanation:

* `BST a` is a **recursive parametric data type** with:

  * `Empty` — represents an empty tree.
  * `Node a left right` — holds a value and two subtrees (left and right).
* `exampleBST` shows a simple tree with three nodes.

---

### 🧪 Expected Output:

```
Example BST:
Node 10 (Node 5 Empty Empty) (Node 15 Empty Empty)
```
