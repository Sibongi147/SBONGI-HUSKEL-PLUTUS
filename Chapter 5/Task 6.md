HC5T6: Function Composition
```haskell
-- evenSquares: Squares a list of numbers and filters only the even ones using function composition
evenSquares :: [Int] -> [Int]
evenSquares = filter even . map (^2)

-- Main function to test evenSquares
main :: IO ()
main = do
    print $ evenSquares [1..10]   -- [4,16,36,64,100]
    print $ evenSquares [3,5,7]   -- []
    print $ evenSquares [2,4,6]   -- [4,16,36]
```

---

### ✅ Explanation:

* `map (^2)`: squares each number in the list
* `filter even`: keeps only even results
* `filter even . map (^2)`: applies both via **function composition**

---

### 🧪 Expected Output:

```
[4,16,36,64,100]
[]
[4,16,36]
```
