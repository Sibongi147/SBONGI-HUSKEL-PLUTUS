HC14T7: Modify the .cabal file to support a library component alongside the main executable.

```haskell
-- Save this as Main.hs and run with: runghc Main.hs

module Main where

-- Library-style function
greet :: String -> String
greet name = "Hello, " ++ name ++ "!"

-- Main executable
main :: IO ()
main = do
  let name = "BONGI"
  putStrLn (greet name)
```

---

### 🚀 How to Run

```bash
runghc Main.hs
```

or compile it:

```bash
ghc Main.hs -o greet && ./greet
```

