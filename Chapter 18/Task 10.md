HC18T10

```haskell
-- Applies a function to a nested functor: f (g a)
nestedFmap :: (Functor f, Functor g) => (a -> b) -> f (g a) -> f (g b)
nestedFmap = fmap . fmap

-- Example usage with nested Maybe and List:
example :: Maybe [Int]
example = Just [1, 2, 3]

-- Applying (+1) to each inner Int inside Maybe [Int]
result :: Maybe [Int]
result = nestedFmap (+1) example  -- Just [2,3,4]

main :: IO ()
main = print result
```

### Explanation:

* `nestedFmap` uses function composition with `fmap . fmap`.
* It works on any two nested functors `f` and `g`.
* For example, `Maybe [Int]`, `[] (Either e)`, etc.

This will print:

```
Just [2,3,4]
```
