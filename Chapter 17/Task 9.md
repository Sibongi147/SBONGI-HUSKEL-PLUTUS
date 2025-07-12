HC17T9
```haskell
{-# LANGUAGE DeriveGeneric #-}

import GHC.Generics (Generic)
import Data.Semigroup

-- Define a custom LoggingLevel type
data LoggingLevel = Debug | Info | Warn | Error
  deriving (Eq, Ord, Show, Generic)

-- Define the Config data type
data Config = Config
  { loggingLevel :: LoggingLevel
  , timeout      :: Int    -- Timeout in seconds
  , retries      :: Int
  } deriving (Show)

-- Semigroup instance for Config
instance Semigroup Config where
  Config l1 t1 r1 <> Config l2 t2 r2 =
    Config (max l1 l2) (min t1 t2) (max r1 r2)

-- Example usage
config1 :: Config
config1 = Config Info 30 3

config2 :: Config
config2 = Config Warn 20 5

combinedConfig :: Config
combinedConfig = config1 <> config2

main :: IO ()
main = print combinedConfig
```

### ✅ Explanation:

* `max l1 l2`: takes the higher severity logging level.
* `min t1 t2`: takes the shorter timeout.
* `max r1 r2`: takes the higher number of retries.
* You can run this code directly and it will output the combined config.
