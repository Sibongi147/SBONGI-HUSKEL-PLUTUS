HC7T1: Implement an Eq instance for a custom data type
```haskell
-- Define the Color data type with three constructors
data Color = Red | Green | Blue

-- Implement the Eq type class for Color
instance Eq Color where
    Red   == Red   = True
    Green == Green = True
    Blue  == Blue  = True
    _     == _     = False

-- Main function to test Eq implementation
main :: IO ()
main = do
    print $ Red == Red       -- True
    print $ Red == Green     -- False
    print $ Blue == Blue     -- True
    print $ Green == Blue    -- False
```

---

### ✅ Explanation:

* Custom `Eq` instance compares colors by matching constructors.
* Same colors are equal; different colors are not.

---

### 🧪 Expected Output:

```
True
False
True
False
```

```
```
