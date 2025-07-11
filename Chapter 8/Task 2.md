HC8T2: Define a new type PaymentMethod with the constructors Cash, Card, and Cryptocurrency. Create a Person type that includes a name, address (tuple of String and Int), and a payment method. Create a person bob who pays with cash.
```haskell
-- Define the PaymentMethod data type
data PaymentMethod = Cash | Card | Cryptocurrency
    deriving (Show)

-- Define the Person data type with name, address (as a tuple), and payment method
data Person = Person
    { name          :: String
    , address       :: (String, Int)
    , paymentMethod :: PaymentMethod
    } deriving (Show)

-- Create a person named Bob who pays with cash
bob :: Person
bob = Person
    { name = "Bob"
    , address = ("Main Street", 42)
    , paymentMethod = Cash
    }

-- Main function to print Bob's details
main :: IO ()
main = print bob
```

---

### ✅ Explanation:

* `PaymentMethod` has three constructors: `Cash`, `Card`, and `Cryptocurrency`.
* `Person` is a record type with:

  * `name :: String`
  * `address :: (String, Int)` — e.g., street name and house number
  * `paymentMethod :: PaymentMethod`
* The value `bob` is an instance of `Person` with `Cash` as his payment method.

---

### 🧪 Expected Output:

```
Person {name = "Bob", address = ("Main Street",42), paymentMethod = Cash}
```
