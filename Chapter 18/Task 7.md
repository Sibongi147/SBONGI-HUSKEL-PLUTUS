HC18T7

---

### ✅ Haskell Code (markdown-ready):

```haskell
-- fmapTuple uses fmap on the (,) a functor to map over the second element
fmapTuple :: (b -> c) -> (a, b) -> (a, c)
fmapTuple = fmap

-- Example usage
example1 :: (String, Int)
example1 = ("Age", 25)

result :: (String, Int)
result = fmapTuple (+1) example1  -- ("Age", 26)

main :: IO ()
main = print result
```

---

### 🧠 Explanation:

* The `Functor` instance for `(,) a` applies the function to the **second** value in the tuple.
* `fmap :: Functor f => (b -> c) -> f b -> f c`
* For `(,) a`, `fmap f (a, b) = (a, f b)`

---

### 🧪 Output:

```
("Age",26)
```
