```haskell
-- Define the Employee data type using record syntax
data Employee = Employee
    { name :: String
    , experienceInYears :: Float
    } deriving (Show)

-- Create an employee named Richard with 7.5 years of experience
richard :: Employee
richard = Employee
    { name = "Richard"
    , experienceInYears = 7.5
    }

-- Main function to print Richard's details
main :: IO ()
main = print richard
```

---

### ✅ Explanation:

* The `Employee` type uses **record syntax** for named fields.
* `richard` is created by assigning values to the `name` and `experienceInYears` fields.

---

### 🧪 Expected Output:

```
Employee {name = "Richard", experienceInYears = 7.5}
```
