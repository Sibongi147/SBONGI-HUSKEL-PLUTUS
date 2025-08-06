HC8T10: Using deriving Show, define a type Book with fields title :: String, author :: String, and year :: Int. Create a Book instance for a book and print it using the Show instance.
```haskell
-- Define the Book data type using record syntax and deriving Show
data Book = Book
    { title  :: String
    , author :: String
    , year   :: Int
    } deriving (Show)

-- Create an instance of a Book
myBook :: Book
myBook = Book
    { title = "Learn You a Haskell for Great Good!"
    , author = "Miran Lipovača"
    , year = 2011
    }

-- Main function to print the book using Show
main :: IO ()
main = print myBook
```

---

### ✅ Explanation:

* `Book` is defined using **record syntax** with fields: `title`, `author`, and `year`.
* `deriving (Show)` automatically provides a way to convert a `Book` to a printable string.
* `myBook` is an example book which is printed in the `main` function.

---

### 🧪 Expected Output:

```
Book {title = "Learn You a Haskell for Great Good!", author = "Miran Lipovača", year = 2011}
```
