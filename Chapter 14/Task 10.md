HC14T10

---

### 📁 Project Structure

```
my-project/
├── app/
│   └── Main.hs
├── src/
│   └── Lib.hs        -- contains `counts` function
├── test/
│   └── Spec.hs       -- contains test suite
├── my-project.cabal
```

---

### ✅ `src/Lib.hs`

```haskell
module Lib (counts) where

import Data.List (group, sort)

-- Counts character frequency in a string
counts :: String -> [(Char, Int)]
counts str = map (\g -> (head g, length g)) . group . sort $ str
```

---

### ✅ `test/Spec.hs`

```haskell
module Main (main) where

import Test.HUnit
import Lib (counts)
import Data.List (sort)

testCounts :: Test
testCounts = TestCase $ do
  let result = sort (counts "haskell")
  let expected = sort [('a',1), ('e',1), ('h',1), ('k',1), ('l',2), ('s',1)]
  assertEqual "counts of 'haskell'" expected result

main :: IO ()
main = runTestTTAndExit $ TestList [testCounts]
```

---

### ✅ Update your `.cabal` file

```cabal
cabal-version:       >=1.10
name:                my-project
version:             0.1.0.0
build-type:          Simple

library
  exposed-modules:     Lib
  hs-source-dirs:      src
  build-depends:       base >=4.7 && <5
  default-language:    Haskell2010

executable my-project-exe
  main-is:             Main.hs
  hs-source-dirs:      app
  build-depends:       base >=4.7 && <5,
                       my-project
  default-language:    Haskell2010

test-suite my-project-test
  type:                exitcode-stdio-1.0
  hs-source-dirs:      test
  main-is:             Spec.hs
  build-depends:       base >=4.7 && <5,
                       HUnit,
                       my-project
  default-language:    Haskell2010
```

---

### 🧪 Run the Test Suite

```bash
cabal test
```

---
