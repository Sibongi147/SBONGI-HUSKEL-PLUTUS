HC14T1

---

### 🗂️ Project Structure

```
hello-cabal/
├── app/
│   └── Main.hs
├── hello-cabal.cabal
├── Setup.hs
└── cabal.project
```

---

### ✅ `app/Main.hs`

```haskell
module Main where

main :: IO ()
main = putStrLn "Hello, Cabal!"
```

---

### ✅ `hello-cabal.cabal`

```cabal
cabal-version:       >=1.10
name:                hello-cabal
version:             0.1.0.0
build-type:          Simple

executable hello-cabal
  main-is:             Main.hs
  hs-source-dirs:      app
  build-depends:       base >=4.7 && <5
  default-language:    Haskell2010
```

---

### ✅ `Setup.hs`

```haskell
import Distribution.Simple
main = defaultMain
```

---

### ✅ `cabal.project`

```cabal
packages: .
```

---

### ▶️ How to Build and Run

```bash
cabal build
cabal run hello-cabal
```

**Output:**

```
Hello, Cabal!
```

