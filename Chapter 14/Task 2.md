HC14T2

1. Add a dependency on the `random` package in your `.cabal` file.
2. Print a random number between 1 and 100 in `Main.hs`.

---

### ✅ Modified `.cabal` file (`hello-cabal.cabal`)

```cabal
cabal-version:       >=1.10
name:                hello-cabal
version:             0.1.0.0
build-type:          Simple

executable hello-cabal
  main-is:             Main.hs
  hs-source-dirs:      app
  build-depends:       base >=4.7 && <5,
                       random >=1.2
  default-language:    Haskell2010
```

---

### ✅ `app/Main.hs`

```haskell
module Main where

import System.Random (randomRIO)

main :: IO ()
main = do
  putStrLn "Generating a random number between 1 and 100..."
  number <- randomRIO (1, 100) :: IO Int
  putStrLn $ "Your random number is: " ++ show number
```

---

### ▶️ How to Build and Run

```bash
cabal update             # update package index
cabal install random     # only needed if it's not already available
cabal build
cabal run hello-cabal
```

---

### 🧪 Example Output

```
Generating a random number between 1 and 100...
Your random number is: 57
```

