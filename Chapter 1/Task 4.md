HC1T4 - Task 4: Composing a Function to Process Player Data

1. `extractPlayers` – extracts player names
2. `sortByScore` – sorts players by score in descending order
3. `topThree` – returns the top 3 players
4. `getTopThreePlayers` – composes the above functions

```haskell
import Data.List (sortBy)
import Data.Ord (comparing)

-- extractPlayers: Takes a list of (name, score) and returns the names only
extractPlayers :: [(String, Int)] -> [String]
extractPlayers players = map fst players

-- sortByScore: Sorts the list by score in descending order
sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore = sortBy (flip (comparing snd))

-- topThree: Gets the top 3 players from the sorted list
topThree :: [(String, Int)] -> [(String, Int)]
topThree = take 3

-- getTopThreePlayers: Composes the above to return just the names of top 3 players
getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

-- Main function to test the logic
main :: IO ()
main = do
    let players = [ ("Alice", 85)
                  , ("Bob", 92)
                  , ("Charlie", 78)
                  , ("David", 95)
                  , ("Eve", 88)
                  ]
    putStrLn "Top 3 Players:"
    mapM_ putStrLn (getTopThreePlayers players)
```

---

### ✅ Explanation:

* **`extractPlayers`**: uses `map fst` to pull the name (first item in each tuple)
* **`sortByScore`**: uses `sortBy` with `comparing snd` and `flip` to sort in descending order
* **`topThree`**: uses `take 3` to get the first 3 items from the sorted list
* **`getTopThreePlayers`**: composes the above functions using function composition (`.`)

---

### 🧪 Sample Output:

```
Top 3 Players:
David
Bob
Eve
```
