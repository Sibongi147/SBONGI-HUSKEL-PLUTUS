HC4T7 - Task 7: Ignore Elements in a List
```haskell
-- firstAndThird: Returns a tuple of the first and third elements of a list, if they exist
firstAndThird :: [a] -> Maybe (a, a)
firstAndThird (x:_:z:_) = Just (x, z)
firstAndThird _         = Nothing

-- Main function to test firstAndThird
main :: IO ()
main = do
    print $ firstAndThird [1,2,3,4]     -- Just (1,3)
    print $ firstAndThird ["a","b","c"] -- Just ("a","c")
    print $ firstAndThird [10]          -- Nothing
```

---

### Expected Output:

```
Just (1,3)
Just ("a","c")
Nothing
```

```
```
