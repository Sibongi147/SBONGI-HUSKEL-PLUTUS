HC10T1: Define a new type class ShowSimple that requires a function showSimple :: a -> String for simple string conversion. Implement an instance for PaymentMethod type.
```haskell
-- Define the PaymentMethod data type
data PaymentMethod = Cash | Card | Cryptocurrency
  deriving (Eq)

-- Define the ShowSimple type class
class ShowSimple a where
  showSimple :: a -> String

-- Implement ShowSimple for PaymentMethod
instance ShowSimple PaymentMethod where
  showSimple Cash           = "Cash"
  showSimple Card           = "Card"
  showSimple Cryptocurrency = "Cryptocurrency"

-- Main function to demonstrate usage
main :: IO ()
main = do
  putStrLn $ "Payment method: " ++ showSimple Cash
  putStrLn $ "Payment method: " ++ showSimple Card
  putStrLn $ "Payment method: " ++ showSimple Cryptocurrency
```

---

### ✅ Explanation:

* **`ShowSimple`** is a custom type class requiring a `showSimple` method.
* We define an instance of `ShowSimple` for `PaymentMethod` to convert each constructor into a human-readable string.
* The `main` function demonstrates how each payment method would be printed using `showSimple`.

---

### 🧪 Expected Output:

```
Payment method: Cash
Payment method: Card
Payment method: Cryptocurrency
```
