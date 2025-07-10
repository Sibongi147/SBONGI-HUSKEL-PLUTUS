HC1T1 - Task 1: Function Composition

```haskell
-- double: Multiplies a number by 2
double :: Int -> Int
double x = x * 2

-- increment: Increases a number by 1
increment :: Int -> Int
increment x = x + 1

-- doubleThenIncrement: Applies double first, then increment (using function composition)
doubleThenIncrement :: Int -> Int
doubleThenIncrement = increment . double

-- Main function to demonstrate usage
main :: IO ()
main = do
    let number = 7
    putStrLn $ "Original number: " ++ show number
    putStrLn $ "Double: " ++ show (double number)
    putStrLn $ "Increment: " ++ show (increment number)
    putStrLn $ "Double then Increment: " ++ show (doubleThenIncrement number)
```

### 💡 How to run this:

* Save the code in a file named `Main.hs`
* Compile and run with GHC:

  ```bash
  ghc Main.hs -o main
  ./main
  ```
* Or load it in GHCi:

  ```bash
  ghci Main.hs
  main
  ```

### 🧾 Sample Output for `number = 7`:

```
Original number: 7
Double: 14
Increment: 8
Double then Increment: 15
```


