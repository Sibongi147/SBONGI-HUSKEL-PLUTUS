HC19T1

### ✅ Full Code (works correctly in markdown and GHC)

```haskell
{-# LANGUAGE InstanceSigs #-}

-- Define the data type
data Pair a = Pair a a deriving (Show)

-- Functor instance
instance Functor Pair where
    fmap :: (a -> b) -> Pair a -> Pair b
    fmap f (Pair x y) = Pair (f x) (f y)

-- Applicative instance
instance Applicative Pair where
    pure :: a -> Pair a
    pure x = Pair x x

    (<*>) :: Pair (a -> b) -> Pair a -> Pair b
    Pair f1 f2 <*> Pair x1 x2 = Pair (f1 x1) (f2 x2)

-- Example usage
example :: Pair Int
example = Pair (+1) (*2) <*> Pair 10 20

main :: IO ()
main = print example  -- Output: Pair 11 40
```

---

### 🔍 Explanation:

* `Pair a` holds two values of type `a`.
* `fmap` applies a function to both elements.
* `pure` puts the same value into both elements.
* `<*>` applies the first function to the first value, and the second function to the second value.

