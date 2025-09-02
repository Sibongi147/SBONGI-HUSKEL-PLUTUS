HC14T9: Use the language extension PartialTypeSignatures to allow wildcard types in a function signature 

```haskell
{-# LANGUAGE PartialTypeSignatures #-}

import Data.List (group, sort)

-- Function with a partial type signature
counts :: _ => String -> [(Char, Int)]
counts str = map (\xs -> (head xs, length xs)) . group . sort $ str

main :: IO ()
main = do
  let input = "hello world"
  print (counts input)
```

---

### 🧠 What GHC Infers

The wildcard `_` will be inferred as `Ord Char` because `sort` requires ordering. So the full type would be:

```haskell
counts :: Ord Char => String -> [(Char, Int)]
```

But thanks to `PartialTypeSignatures`, you don’t need to write that out explicitly.

---

