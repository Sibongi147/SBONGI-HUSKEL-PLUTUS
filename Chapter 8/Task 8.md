HC8T8: Using type synonyms, create a type synonym Name for String and a type synonym Age for Int. Define a function greet :: Name -> Age -> String that takes a name and age and returns a greeting.
```haskell
-- Type synonyms
type Name = String
type Age = Int

-- greet: Takes a name and age and returns a greeting string
greet :: Name -> Age -> String
greet name age = "Hello, " ++ name ++ "! You are " ++ show age ++ " years old."

-- Main function to test greet
main :: IO ()
main = do
    putStrLn $ greet "Alice" 30
    putStrLn $ greet "Bob" 25
```

---

### ✅ Explanation:

* `type Name = String` and `type Age = Int` create meaningful aliases for readability.
* `greet` uses string concatenation and `show` to format the greeting message.

---

### 🧪 Expected Output:

```
Hello, Alice! You are 30 years old.
Hello, Bob! You are 25 years old.
```
