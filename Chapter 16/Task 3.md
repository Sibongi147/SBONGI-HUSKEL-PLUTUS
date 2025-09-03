HC16T3

---


```haskell
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let number = read input :: Integer
    print $ factorial number
```

