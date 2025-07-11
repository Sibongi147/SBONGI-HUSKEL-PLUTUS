HC8T9: Define a type Transaction with fields from :: Address, to :: Address, amount :: Value, and transactionId :: String. Define a function createTransaction :: Address -> Address -> Value -> String that creates a Transaction and returns the transaction id.
```haskell
-- Type synonyms for clarity
type Address = String
type Value = Int

-- Define the Transaction data type using record syntax
data Transaction = Transaction
    { from :: Address
    , to :: Address
    , amount :: Value
    , transactionId :: String
    } deriving (Show)

-- Helper function to generate a simple transaction ID (for example purposes)
generateTransactionId :: Address -> Address -> Value -> String
generateTransactionId fromAddr toAddr val =
    take 10 (fromAddr ++ toAddr ++ show val ++ "tx")

-- createTransaction: builds a Transaction and returns its ID
createTransaction :: Address -> Address -> Value -> String
createTransaction fromAddr toAddr val =
    let txId = generateTransactionId fromAddr toAddr val
        _ = Transaction fromAddr toAddr val txId  -- We create the transaction but only return its ID
    in txId

-- Main function to test createTransaction
main :: IO ()
main = do
    let sender = "addr1qsender123"
    let receiver = "addr1qreceiver456"
    let val = 100
    let txId = createTransaction sender receiver val
    putStrLn $ "Transaction ID: " ++ txId
```

---

### ✅ Explanation:

* `Transaction` is a record with `from`, `to`, `amount`, and `transactionId`.
* `generateTransactionId` creates a simple ID (you could replace this with a UUID or hash for real cases).
* `createTransaction` constructs a `Transaction` and returns its ID.

---

### 🧪 Sample Output:

```
Transaction ID: addr1qsende
```

*(Output depends on the `take 10` portion from the generated ID string.)*
