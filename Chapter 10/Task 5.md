HC10T5: Define a type class ShowDetailed with a function showDetailed :: a -> String and implement it for a type User.
```haskell
-- Define the User data type
data User = User
  { username :: String
  , age      :: Int
  , email    :: String
  }

-- Define the ShowDetailed type class
class ShowDetailed a where
  showDetailed :: a -> String

-- Implement ShowDetailed for User
instance ShowDetailed User where
  showDetailed (User name userAge userEmail) =
    "Username: " ++ name ++
    "\nAge: " ++ show userAge ++
    "\nEmail: " ++ userEmail

-- Example usage
main :: IO ()
main = do
  let user1 = User "alice" 30 "alice@example.com"
  putStrLn $ showDetailed user1
```

---

### ✅ Explanation:

* **`User`** is a record type with fields `username`, `age`, and `email`.
* **`ShowDetailed`** is a custom type class that defines a method `showDetailed`.
* The instance for `User` nicely formats the user information as a string.

---

### 🧪 Expected Output:

```
Username: alice
Age: 30
Email: alice@example.com
```
