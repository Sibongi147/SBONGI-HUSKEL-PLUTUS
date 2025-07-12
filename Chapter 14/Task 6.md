 HC14T6

---

### 📁 Project Structure

```
MyProject/
├── app/
│   └── Main.hs
├── src/
│   └── Hello.hs
├── myproject.cabal
└── cabal.project
```

---

### 🔧 `myproject.cabal`

```cabal
cabal-version:       >=1.10
name:                myproject
version:             0.1.0.0
build-type:          Simple

library
  exposed-modules:     Hello
  hs-source-dirs:      src
  build-depends:       base >=4.7 && <5
  default-language:    Haskell2010

executable myproject-exe
  main-is:             Main.hs
  hs-source-dirs:      app
  build-depends:       base >=4.7 && <5,
                       myproject
```
