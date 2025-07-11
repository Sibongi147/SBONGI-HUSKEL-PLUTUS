HC9T1: Define a Parametric Type Synonym
```haskell
-- Define a type synonym Entity that takes a type parameter `a`
type Entity a = (a, Address)

-- Define Address as a type synonym for String
type Address = String

-- Example usage: define a Person entity and a Company entity
personEntity :: Entity String
personEntity = ("Alice", "123 Maple Street")

companyEntity :: Entity Int
companyEntity = (101, "456 Business Ave")

-- Main function to print both entities
main :: IO ()
main = do
    putStrLn $ "Person Entity: " ++ show personEntity
    putStrLn $ "Company Entity: " ++ show companyEntity
```

---

### ✅ Explanation:

* `Entity a` is a **parametric type synonym**, meaning it can represent any entity of type `a` paired with an `Address`.
* `Address` is a type synonym for `String`.
* This allows you to create flexible entities like:

  * `Entity String` for names
  * `Entity Int` for IDs

---

### 🧪 Expected Output:

```
Person Entity: ("Alice","123 Maple Street")
Company Entity: (101,"456 Business Ave")
```
