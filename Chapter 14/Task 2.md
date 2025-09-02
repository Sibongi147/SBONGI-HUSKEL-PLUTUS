HC14T2: Modify the .cabal file to include a dependency on the random package and print a random number between 1 and 100.

```haskell
main :: IO ()
main = do
    putStrLn "Enter a number between 1 and 100:"
    num <- readLn :: IO Int
    putStrLn ("You entered: " ++ show num)
```



```bash
cabal install random
runghc Main.hs
```



---

