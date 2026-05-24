## Lesson 41: Structs: The Lightweight Foundation of Swift Data

**Struct (Structure)** ပဵၼ်လၢႆးၵၢၼ်ဢဝ် Variable လႄႈ Function ဢၼ်ၵဵဝ်ႇၵၼ် မႃးၵူပ်ႉၵၼ်ဝႆႉ ႁႂ်ႈပဵၼ် "Type မႂ်ႇ" ဢၼ်ၼိုင်ႈယဝ်ႉ။
မၼ်းမိူၼ်ၼင်ႇ ႁဝ်းသၢင်ႈ "Blueprint" ဝႆႉ၊ ယဝ်ႉၸင်ႇဢဝ် Blueprint ၼၼ်ႉ ၵႂႃႇသၢင်ႈပဵၼ် Object ယဝ်ႉ။

### 1. Syntax ၵၢၼ်သၢင်ႈ Struct
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း `struct` သေ ၸိုဝ်ႈမၼ်းလူဝ်ႇတႄႇလူၺ်ႈ **တူဝ်လိၵ်ႈလူင် (Uppercase)** ယဝ်ႉ။

```swift
struct KeyboardKey {
    let label: String
    var color: String
}
```

### 2. Memberwise Initializer
လွင်ႈၶိုၵ်ႉတွၼ်းၶေႃ Struct တႄႉ Swift တေတႅမ်ႈ **`init()`** (ၵၢၼ်ပၼ်ၵႃႈၶၼ်တႄႇမၼ်း) ပၼ်ႁဝ်းႁင်းၵူၺ်းယဝ်ႉ။
ၵွပ်ႈၼႆ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code တွၼ်ႈတႃႇသၢင်ႈမၼ်းၼမ်ၼမ်ယဝ်ႉ။

```swift
// သၢင်ႈ Object ဢွၵ်ႇမႃးၼႂ်း Struct
let myKey = KeyboardKey(label: "ၵ", color: "Gray")

print(myKey.label) // Output: ၵ
```

### 3. Value Types (လွင်ႈၵၢၼ် Copy)
Struct ပဵၼ် **Value Type** ယဝ်ႉ။ မၢႆထိုင်ဝႃႈ ပေႃးႁဝ်းဢဝ် Struct တူဝ်ၼိုင်ႈ ၵႂႃႇသႂ်ႇၼႂ်း Variable ထႅင်ႈတူဝ်ၼိုင်ႈ ဢမ်ႇၼၼ် သူင်ႇၵႂႃႇၼႂ်း Function ၼႆၸိုင် Swift တေ **"Copy"** ၶေႃႈမုၼ်းမၼ်းၵႂႃႇတင်းသဵင်ႈယဝ်ႉ။

*   ၼႆႉပွင်ႇဝႃႈ သင်ႁဝ်းလႅၵ်ႈလၢႆႈတူဝ်မႂ်ႇ၊ တူဝ်ၵဝ်ႇမၼ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈၸွမ်းယဝ်ႉ။

```swift
var firstKey = KeyboardKey(label: "ၵ", color: "White")
var secondKey = firstKey // Copy ၵႂႃႇယဝ်ႉ

secondKey.color = "Red"

print(firstKey.color)  // Output: White (တူဝ်ၵဝ်ႇဢမ်ႇလႅၵ်ႈ)
print(secondKey.color) // Output: Red (လႅၵ်ႈၵူၺ်းတူဝ် Copy)
```



---

### 4. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Struct?
1.  **Lightweight:** မၼ်းႁဵတ်းၵၢၼ်ၽႂ်း လႄႈ ဢမ်ႇၵိၼ် Memory ၼမ်။
2.  **Safety:** ၵွပ်ႈမၼ်းပဵၼ်ၵၢၼ် Copy၊ ႁဝ်းဢမ်ႇလူဝ်ႇၵူဝ်ဝႃႈ Code တီႈၼိုင်ႈ တေၵႂႃႇလႅၵ်ႈလၢႆႈၶေႃႈมูล တီႈၼိုင်ႈ လူၺ်ႈႁဝ်းဢမ်ႇႁူႉတူဝ်။
3.  **Thread Safety:** မၼ်းငၢႆႈတွၼ်ႈတႃႇၸႂ်ႉၼႂ်း Multi-threading ၵွပ်ႈၶေႃႈมูลမၼ်းဢမ်ႇၸၢင်ႈ "ၸႅၵ်ႇၵၼ်ၸႂ်ႉ" (Shared state)။

---