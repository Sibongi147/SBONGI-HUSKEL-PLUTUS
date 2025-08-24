HC12T5
 
```haskell
-- Define an infinite list of numbers starting from 1
infiniteNumbers :: [Integer]
infiniteNumbers = [1..]

-- Extract the first n elements from the infinite list
firstN :: Int -> [Integer]
firstN n = take n infiniteNumbers

-- Main function to run and display the first 10 numbers
main :: IO ()
main = do
    let n = 10
    let result = firstN n
    putStrLn $ "The first " ++ show n ++ " numbers are: " ++ show result
```

### 🧠 How it works:
- `infiniteNumbers = [1..]` creates an infinite list starting from 1.
- `take n infiniteNumbers` lazily grabs only the first `n` elements.
- `main` sets `n = 10` and prints the result.
