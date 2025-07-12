HC17T8
```haskell
import Data.Semigroup (Semigroup, (<>))

foldWithSemigroup :: Semigroup a => [a] -> a
foldWithSemigroup = foldr1 (<>)

-- Example usage with Sum (from Data.Monoid)
import Data.Monoid (Sum(..))

example :: Sum Int
example = foldWithSemigroup [Sum 1, Sum 2, Sum 3]  -- Result: Sum {getSum = 6}

main :: IO ()
main = print example
```
