HC1T5 - Task 5: Laziness in Haskell

* Defines a function `infiniteNumbers` that generates an infinite list starting from 1
* Extracts the first `n` elements using `take`

```haskell
-- infiniteNumbers: Generates an infinite list of numbers starting from 1
infiniteNumbers :: [Int]
infiniteNumbers = [1..]  -- Can also use enumFrom 1 or iterate (+1) 1

-- firstN: Takes the first n numbers from infiniteNumbers
firstN :: Int -> [Int]
firstN n = take n infiniteNumbers

-- Main function to test
main :: IO ()
main = do
    let n = 10
    putStrLn $ "First " ++ show n ++ " numbers:"
    print (firstN n)
```

---

### ✅ Explanation:

* `infiniteNumbers` is an infinite list: `[1, 2, 3, 4, 5, ...]`
* `take n` safely extracts the first `n` elements from it (lazily evaluated)
* `firstN 10` gives `[1,2,3,4,5,6,7,8,9,10]`

---

### 🧪 Sample Output (for `n = 10`):

```
First 10 numbers:
[1,2,3,4,5,6,7,8,9,10]
```

