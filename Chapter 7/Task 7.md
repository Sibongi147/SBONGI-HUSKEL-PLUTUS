HC7T7: Implement a function using Bounded and Enum
```haskell
-- Define the Color data type
data Color = Red | Green | Blue
    deriving (Show, Eq, Enum, Bounded)

-- nextColor: Returns the next color, wrapping around after the last one
nextColor :: Color -> Color
nextColor c
    | c == maxBound = minBound
    | otherwise     = succ c

-- Main function to test nextColor
main :: IO ()
main = do
    print $ nextColor Red    -- Green
    print $ nextColor Green  -- Blue
    print $ nextColor Blue   -- Red (wraps around)
```

---

### ✅ Explanation:

* `Enum` provides `succ` to get the next value.
* `Bounded` provides `minBound` and `maxBound` for wrapping logic.
* If input is `maxBound` (Blue), it wraps around to `minBound` (Red).

---

### 🧪 Expected Output:

```
Green
Blue
Red
```
