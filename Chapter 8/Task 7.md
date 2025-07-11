HC8T7: Define a new type Animal using data with constructors Dog String and Cat String. Create a function describeAnimal :: Animal -> String that describes the animal. Create instances for a dog and a cat
```haskell
-- Define the Animal data type with Dog and Cat constructors
data Animal = Dog String | Cat String
    deriving (Show)

-- Define the describeAnimal function
describeAnimal :: Animal -> String
describeAnimal (Dog name) = "This is a dog named " ++ name ++ "."
describeAnimal (Cat name) = "This is a cat named " ++ name ++ "."

-- Create instances of Animal
buddy :: Animal
buddy = Dog "Buddy"

whiskers :: Animal
whiskers = Cat "Whiskers"

-- Main function to test describeAnimal
main :: IO ()
main = do
    putStrLn $ describeAnimal buddy     -- "This is a dog named Buddy."
    putStrLn $ describeAnimal whiskers  -- "This is a cat named Whiskers."
```

---

### ✅ Explanation:

* `Animal` is a custom data type with two constructors:

  * `Dog String` — takes a dog's name
  * `Cat String` — takes a cat's name
* `describeAnimal` uses **pattern matching** to describe the animal.
* `buddy` and `whiskers` are example instances of `Animal`.

---

### 🧪 Expected Output:

```
This is a dog named Buddy.
This is a cat named Whiskers.
```
