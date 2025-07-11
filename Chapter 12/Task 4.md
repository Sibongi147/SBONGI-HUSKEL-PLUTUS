HC12T4
```haskell
-- Program to calculate and print the first 10 Fibonacci numbers using recursion

-- Recursive Fibonacci function
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- Generate list of first n Fibonacci numbers
firstNFibs :: Int -> [Int]
firstNFibs n = map fibonacci [0..(n - 1)]

main :: IO ()
main = do
  let fibs = firstNFibs 10
  putStrLn "The first 10 Fibonacci numbers are:"
  print fibs
```

---

### ✅ Explanation:

* `fibonacci` is a recursive function to compute the nth Fibonacci number.
* `firstNFibs` uses `map` to generate the first `n` Fibonacci numbers.
* `main` prints the first 10 Fibonacci numbers using `print`.

---

### 🧪 Output:

```
The first 10 Fibonacci numbers are:
[0,1,1,2,3,5,8,13,21,34]
```
