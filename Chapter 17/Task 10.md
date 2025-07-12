HC17T10
```haskell
{-# LANGUAGE DeriveGeneric #-}

import GHC.Generics (Generic)
import Data.Semigroup

-- Define LoggingLevel with ordering
data LoggingLevel = Debug | Info | Warn | Error
  deriving (Eq, Ord, Show, Generic)

-- Define Config type
data Config = Config
  { loggingLevel :: LoggingLevel
  , timeout      :: Int
  , retries      :: Int
  } deriving (Show)

-- Semigroup instance: combine configs
instance Semigroup Config where
  Config l1 t1 r1 <> Config l2 t2 r2 =
    Config (max l1 l2) (min t1 t2) (max r1 r2)

-- Monoid instance: identity configuration
instance Monoid Config where
  mempty = Config Debug maxBound 0
  mappend = (<>)

-- Example usage
config1 :: Config
config1 = Config Info 40 2

config2 :: Config
config2 = Config Warn 20 5

combined :: Config
combined = config1 <> config2

main :: IO ()
main = do
  putStrLn "Combined Config:"
  print combined

  putStrLn "\nDefault Config (mempty):"
  print (mempty :: Config)
```

### ✅ Explanation:

* **`mempty`** is the identity:

  * `Debug` is the **lowest** `LoggingLevel`
  * `maxBound` (from `Int`) is the **highest** timeout
  * `0` is the **lowest** retries
* **`Semigroup`** instance merges configs by:

  * Using the highest `LoggingLevel`
  * Using the lowest `timeout`
  * Using the highest `retries`
