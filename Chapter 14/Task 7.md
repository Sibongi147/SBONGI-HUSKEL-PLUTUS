HC14T7

```
MyProject/
├── app/
│   └── Main.hs         -- executable entry point
├── src/
│   └── Lib.hs          -- library code
├── myproject.cabal     -- cabal config file
└── cabal.project       -- optional project file
```

---

### 📄 `myproject.cabal`

```cabal
cabal-version:       >=1.10
name:                myproject
version:             0.1.0.0
build-type:          Simple

library
  exposed-modules:     Lib
  hs-source-dirs:      src
  build-depends:       base >=4.7 && <5
  default-language:    Haskell2010

executable myproject-exe
  main-is:             Main.hs
  hs-source-dirs:      app
  build-depends:       base >=4.7 && <5,
                       myproject
  default-language:    Haskell2010
```

---

### 🧾 Example Code

#### 📄 `src/Lib.hs`

```haskell
module Lib (greet) where

greet :: String -> String
greet name = "Hello, " ++ name ++ "!"
```

#### 📄 `app/Main.hs`

```haskell
module Main where

import Lib (greet)

main :: IO ()
main = putStrLn (greet "Cabal")
```

---

### ✅ To Build and Run:

```bash
cabal build
cabal run myproject-exe
```

---
