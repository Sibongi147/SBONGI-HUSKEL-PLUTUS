HC12T7


```haskell
-- CircleArea.hs

-- Function to calculate the area of a circle
calculateCircleArea :: Floating a => a -> a
calculateCircleArea r = pi * r * r

-- Main function to demonstrate usage
main :: IO ()
main = do
    putStrLn "Enter the radius of the circle:"
    input <- getLine
    let radius = read input :: Double
        area   = calculateCircleArea radius
    putStrLn ("The area of the circle is: " ++ show area)
```

---

### ✅ How to Run

**Compile:**

```bash
ghc CircleArea.hs -o circlearea
./circlearea
```

**Run without compiling:**

```bash
runghc CircleArea.hs
```

---

### 💻 Example Run

```
Enter the radius of the circle:
5
The area of the circle is: 78.53981633974483
```

---


