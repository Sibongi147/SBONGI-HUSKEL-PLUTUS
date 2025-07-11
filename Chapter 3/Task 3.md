HC3T3 - Task 3: Convert an RGB color to a hex string using let bindings

### ✅ `rgbToHex :: (Int, Int, Int) -> String`

* Uses `let` bindings to convert each RGB component to a **two-digit hex string**
* Concatenates them to form a full 6-digit hex color code

```haskell
import Text.Printf (printf)

-- rgbToHex: Converts a tuple of (R, G, B) values into a hexadecimal color string
rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) =
    let redHex   = printf "%02X" r
        greenHex = printf "%02X" g
        blueHex  = printf "%02X" b
    in redHex ++ greenHex ++ blueHex

-- Main function to test rgbToHex
main :: IO ()
main = do
    putStrLn $ "rgbToHex (255, 0, 127) = #" ++ rgbToHex (255, 0, 127)
    putStrLn $ "rgbToHex (0, 255, 64)  = #" ++ rgbToHex (0, 255, 64)
```

---

### ✅ Explanation

* `printf "%02X"`: formats an integer as a **two-digit uppercase hex** string (e.g., 0 → `00`, 127 → `7F`)
* `let` bindings are used to compute each color component
* The final string concatenates red, green, and blue hex parts

---

### 🧪 Expected Output:

```
rgbToHex (255, 0, 127) = #FF007F
rgbToHex (0, 255, 64)  = #00FF40
````
