HC12T2
```haskell
-- Function to add two numbers and print the result

addTwoNumbers :: Int -> Int -> Int
addTwoNumbers x y = x + y

main :: IO ()
main = do
  let result = addTwoNumbers 10 20
  putStrLn $ "The sum is: " ++ show result
```

---

### ✅ Explanation:

* `addTwoNumbers` takes two `Int` values and returns their sum.
* `main` calls this function with the values `10` and `20`.
* `show` converts the result to a string for display with `putStrLn`.

---

### 🧪 Output:

```
The sum is: 30
```
