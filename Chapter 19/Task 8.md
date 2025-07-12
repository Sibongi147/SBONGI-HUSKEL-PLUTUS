HC19T8


```haskell
-- | Runs two applicative effects and returns the result of the first,
-- discarding the result of the second.
discardSecond :: Applicative f => f a -> f b -> f a
discardSecond = (<*)

-- Example usage with IO
main :: IO ()
main = do
  let action1 = putStrLn "First action" >> pure 10
      action2 = putStrLn "Second action" >> pure "ignored"
  result <- discardSecond action1 action2
  print result
```

---

### Explanation:

* `<*` runs the first applicative action, then the second, but returns the result of the first.
* `discardSecond` is just an alias for `<*`.
* In the example, both actions print messages, but only the result from `action1` (`10`) is returned and printed.

