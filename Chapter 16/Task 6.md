HC16T6

```haskell
-- Efficient Fibonacci using tail recursion
fib :: Int -> Integer
fib n = fibHelper n 0 1
  where
    fibHelper 0 a _ = a
    fibHelper n a b = fibHelper (n - 1) b (a + b)

main :: IO ()
main = do
    putStrLn "Enter n:"
    input <- getLine
    let n = read input :: Int
    print $ fib n
```

---

### 🛠️ Tips for OnlineGDB
- Make sure there’s **no comment block** (`{-|`) at the top unless it’s properly closed with `-}`.
- The file should be named `main.hs` and contain a `main :: IO ()` function.
- Avoid placing `import` statements after `main`—OnlineGDB expects them at the top.

