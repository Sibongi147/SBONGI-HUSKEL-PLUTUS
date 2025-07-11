HC10T4: Create a parameterized type Box a and make it an instance of Eq.
```haskell
-- Define a parameterized data type Box
data Box a = EmptyBox | FullBox a
  deriving (Show)

-- Make Box an instance of Eq
instance Eq a => Eq (Box a) where
  EmptyBox == EmptyBox         = True
  FullBox x == FullBox y       = x == y
  _ == _                       = False

-- Example usage
main :: IO ()
main = do
  let b1 = FullBox 42
  let b2 = FullBox 42
  let b3 = FullBox 7
  let b4 = EmptyBox

  print (b1 == b2)  -- True
  print (b1 == b3)  -- False
  print (b1 == b4)  -- False
  print (b4 == EmptyBox)  -- True
```

---

### ✅ Explanation:

* `Box a` is a **parameterized type**, meaning it can hold any type `a`.
* The `Eq` instance ensures:

  * Two `FullBox`es are equal if their contents are equal.
  * Two `EmptyBox`es are equal.
  * Otherwise, they’re not equal.

---

### 🧪 Expected Output:

```
True
False
False
True
```
