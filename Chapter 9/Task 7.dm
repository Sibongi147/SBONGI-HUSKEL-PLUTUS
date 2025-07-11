HC9T7: Implement a Function to Calculate Engagement
```haskell
-- Define the recursive Tweet data type
data Tweet = Tweet
    { content  :: String
    , likes    :: Int
    , comments :: [Tweet]
    } deriving (Show)

-- Define the engagement function
engagement :: Tweet -> Int
engagement (Tweet _ l cs) = l + sum (map engagement cs)

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

-- Main function to print the engagement score
main :: IO ()
main = do
    putStrLn $ "Total engagement: " ++ show (engagement tweet1)
```

---

### ✅ Explanation:

* `engagement` uses recursion to:

  * Add the tweet’s own `likes`
  * Recursively calculate and sum engagement from each comment

---

### 🧪 Engagement Calculation:

* Main tweet: 10 likes
* Comment 1: 5 likes
* Comment 2: 3 likes

  * Reply to Comment 2: 2 likes
    **Total: 10 + 5 + 3 + 2 = 20**

---

### 🧪 Expected Output:

```
Total engagement: 20
```
