HC10T10: Create a type class Concatenatable with a function concatWith :: a -> a -> a. Implement it for the type [Char].
```haskell
-- Define the Concatenatable type class
class Concatenatable a where
  concatWith :: a -> a -> a

-- Implement Concatenatable for [Char] (String)
instance Concatenatable [Char] where
  concatWith = (++)

-- Example usage
main :: IO ()
main = do
  let str1 = "Hello, "
      str2 = "World!"
  putStrLn $ concatWith str1 str2  -- Output: Hello, World!
```

---

### ✅ Explanation:

* `Concatenatable` defines a method `concatWith` to concatenate two values of the same type.
* The instance for `[Char]` (strings) uses the built-in `(++)` operator to concatenate.
* The `main` function demonstrates concatenating two strings.

---

### 🧪 Expected Output:

```
Hello, World!
```
