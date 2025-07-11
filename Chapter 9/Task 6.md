HC9T6: Define a Recursive Data Type
```haskell
-- Define a recursive data type Tweet
data Tweet = Tweet
    { content  :: String
    , likes    :: Int
    , comments :: [Tweet]
    } deriving (Show)

-- Example tweet with nested comments
tweet1 :: Tweet
tweet1 = Tweet
    { content = "Learning Haskell is fun!"
    , likes = 10
    , comments =
        [ Tweet
            { content = "Absolutely agree!"
            , likes = 5
            , comments = []
            }
        , Tweet
            { content = "Can't wait to try monads."
            , likes = 3
            , comments =
                [ Tweet
                    { content = "They're not scary once you get the idea!"
                    , likes = 2
                    , comments = []
                    }
                ]
            }
        ]
    }

-- Main function to print the tweet
main :: IO ()
main = print tweet1
```

---

### ✅ Explanation:

* `Tweet` is a **recursive data type** because each `Tweet` can contain a list of other `Tweet` values as comments.
* Each tweet has:

  * `content :: String`
  * `likes :: Int`
  * `comments :: [Tweet]` — list of replies

---

### 🧪 Example Output (structure may vary slightly):

```
Tweet {content = "Learning Haskell is fun!", likes = 10, comments = [Tweet {content = "Absolutely agree!", likes = 5, comments = []}, Tweet {content = "Can't wait to try monads.", likes = 3, comments = [Tweet {content = "They're not scary once you get the idea!", likes = 2, comments = []}]}]}
```
