HC7T2: Implement an Ord instance for a custom data type
```haskell
-- Define the Color data type
data Color = Red | Green | Blue
    deriving (Show, Eq)

-- Implement the Ord type class for Color with Red < Green < Blue
instance Ord Color where
    compare Red Green   = LT
    compare Red Blue    = LT
    compare Green Blue  = LT
    compare Green Red   = GT
    compare Blue Red    = GT
    compare Blue Green  = GT
    compare c1 c2       = EQ

-- Main function to test Ord implementation
main :: IO ()
main = do
    print $ Red < Green       -- True
    print $ Green < Blue      -- True
    print $ Blue < Red        -- False
    print $ Red == Red        -- True
    print $ compare Green Green -- EQ
```

---

### ✅ Explanation:

* `compare` explicitly defines ordering between each pair.
* `Red < Green < Blue`.
* Equality uses `Eq` instance.

---

### 🧪 Expected Output:

```
True
True
False
True
EQ
```

```
```
