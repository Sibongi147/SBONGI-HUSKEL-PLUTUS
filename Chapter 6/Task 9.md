-- HC6T9: Implement a function that applies a given function to each element of a list (map implementation).
```haskell
-- myMap: Applies a function to each element of a list (custom map implementation)
myMap :: (a -> b) -> [a] -> [b]
myMap _ []     = []
myMap f (x:xs) = f x : myMap f xs

-- Main function to test myMap
main :: IO ()
main = do
    print $ myMap (+1) [1, 2, 3]         -- [2,3,4]
    print $ myMap (*2) [4, 5, 6]         -- [8,10,12]
    print $ myMap length ["hi", "haskell", "GPT"] -- [2,7,3]
```

---

### ✅ Explanation:

* Recursively applies the function `f` to the head of the list and recurses on the tail.
* Base case is an empty list which returns an empty list.

---

### 🧪 Expected Output:

```
[2,3,4]
[8,10,12]
[2,7,3]
```
