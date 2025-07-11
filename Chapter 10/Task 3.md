HC10T3: Define a type class Comparable with a function compareWith :: a -> a -> Ordering. Implement it for Blockchain
```haskell
-- Define the Blockchain data type
data Blockchain = Bitcoin | Ethereum | Cardano
  deriving (Show, Eq)

-- Define the Comparable type class
class Comparable a where
  compareWith :: a -> a -> Ordering

-- Implement Comparable for Blockchain
-- We'll define the order: Bitcoin < Ethereum < Cardano
instance Comparable Blockchain where
  compareWith Bitcoin Bitcoin     = EQ
  compareWith Bitcoin _           = LT
  compareWith Ethereum Bitcoin    = GT
  compareWith Ethereum Ethereum   = EQ
  compareWith Ethereum Cardano    = LT
  compareWith Cardano Cardano     = EQ
  compareWith Cardano _           = GT

-- Example usage
main :: IO ()
main = do
  print $ compareWith Bitcoin Ethereum   -- Output: LT
  print $ compareWith Cardano Bitcoin    -- Output: GT
  print $ compareWith Ethereum Ethereum  -- Output: EQ
```

---

### ✅ Explanation:

* **`Comparable`** is a custom type class with the function `compareWith`.
* `Blockchain` is a custom data type with three constructors.
* We implement a custom ordering: `Bitcoin < Ethereum < Cardano`.
* The `main` function demonstrates comparisons between blockchain types.

---

### 🧪 Expected Output:

```
LT
GT
EQ
```
