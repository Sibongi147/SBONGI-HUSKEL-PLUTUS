HC10T8: Define a subclass AdvancedEq of Eq with an additional method compareEquality :: a -> a -> Bool.
```haskell
-- Define a subclass AdvancedEq of Eq
class Eq a => AdvancedEq a where
  compareEquality :: a -> a -> Bool

-- Define a data type for demonstration
data PaymentMethod = Cash | Card | Cryptocurrency
  deriving (Eq, Show)

-- Implement AdvancedEq for PaymentMethod
instance AdvancedEq PaymentMethod where
  -- compareEquality could add logging or custom logic; here it's just aliasing (==)
  compareEquality x y = x == y

-- Example usage
main :: IO ()
main = do
  let method1 = Card
  let method2 = Cryptocurrency
  let method3 = Card

  putStrLn $ "method1 == method2? " ++ show (compareEquality method1 method2)
  putStrLn $ "method1 == method3? " ++ show (compareEquality method1 method3)
```

---

### ✅ Explanation:

* `AdvancedEq` is a **subclass** of `Eq`, meaning it inherits the `==` and `/=` definitions.
* It introduces a new method: `compareEquality`, which may override or enhance equality checking.
* The instance for `PaymentMethod` simply reuses `(==)`.

---

### 🧪 Output:

```
method1 == method2? False
method1 == method3? True
```
