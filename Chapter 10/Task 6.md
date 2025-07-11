HC10T6: Modify the Eq type class to use mutual recursion between == and /= in an instance for the Blockchain type.
```haskell
-- Define the Blockchain data type
data Blockchain = Bitcoin | Ethereum | Cardano
  deriving (Show)

-- Implement Eq using mutual recursion between (==) and (/=)
instance Eq Blockchain where
  x == y = not (x /= y)
  x /= y = not (x == y)
```

---

### ⚠️ Explanation:

* This example shows **mutual recursion**, where `==` is defined in terms of `/=` and vice versa.
* **Important**: This code compiles, but **will result in infinite recursion at runtime**, leading to a stack overflow if you try to compare values.

### ✅ Proper version (with mutual recursion logic but termination):

To make this work without infinite recursion, you must define one of them with concrete logic:

```haskell
-- Define the Blockchain data type
data Blockchain = Bitcoin | Ethereum | Cardano
  deriving (Show)

-- Safe mutual recursion: define one directly, the other in terms of it
instance Eq Blockchain where
  Bitcoin   == Bitcoin   = True
  Ethereum  == Ethereum  = True
  Cardano   == Cardano   = True
  _         == _         = False

  x /= y = not (x == y)
```

---

### 🧪 Example usage:

```haskell
main :: IO ()
main = do
  print (Bitcoin == Bitcoin)     -- True
  print (Bitcoin /= Ethereum)    -- True
  print (Cardano == Ethereum)    -- False
```

---

### ✅ Output:

```
True
True
False
```
