HC10T7: Create a type class Convertible with convert :: a -> b and implement it for converting PaymentMethod to String.
```haskell
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}

-- Define the PaymentMethod data type
data PaymentMethod = Cash | Card | Cryptocurrency
  deriving (Show)

-- Define the Convertible type class
class Convertible a b where
  convert :: a -> b

-- Implement Convertible to convert PaymentMethod to String
instance Convertible PaymentMethod String where
  convert Cash           = "Cash payment"
  convert Card           = "Card payment"
  convert Cryptocurrency = "Cryptocurrency payment"

-- Example usage
main :: IO ()
main = do
  putStrLn $ convert Cash
  putStrLn $ convert Card
  putStrLn $ convert Cryptocurrency
```

---

### ✅ Explanation:

* `Convertible` is a **multi-parameter type class** allowing flexible type conversions.
* We define an instance: `Convertible PaymentMethod String` to describe how to convert each `PaymentMethod` to a `String`.

---

### 🧪 Output:

```
Cash payment
Card payment
Cryptocurrency payment
```
