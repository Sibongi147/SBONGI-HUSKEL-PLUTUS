HC8T1: Create a type synonym called Address for String and a type synonym called Value for Int
```haskell
-- Type synonyms
type Address = String
type Value = Int

-- generateTx: Takes a sender address, receiver address, and a value, and returns a transaction description
generateTx :: Address -> Address -> Value -> String
generateTx from to amount =
    "From: " ++ from ++ " -> To: " ++ to ++ " | Amount: " ++ show amount

-- Main function to test generateTx
main :: IO ()
main = do
    let sender = "addr1qxyz123"
    let receiver = "addr1qabc789"
    let amount = 100
    putStrLn $ generateTx sender receiver amount
```

---

### ✅ Explanation:

* `type Address = String` makes the code more readable and domain-specific.
* `generateTx` creates a formatted string that describes a transaction.
* `show amount` converts the `Int` value to a `String` for concatenation.

---

### 🧪 Expected Output:

```
From: addr1qxyz123 -> To: addr1qabc789 | Amount: 100
```
