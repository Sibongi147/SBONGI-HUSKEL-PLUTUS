HC18T5

```haskell
main :: IO ()
main = do
  print $ fmap (+1) (Right 5 :: Either String Int)     -- Right 6
  print $ fmap (+1) (Left "error" :: Either String Int) -- Left "error"
```

No need to reinvent the wheel—Haskell’s typeclass system already has your back.

