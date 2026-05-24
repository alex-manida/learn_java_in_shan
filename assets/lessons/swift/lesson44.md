## Lesson 44: Stored Properties: Constant and Variable Data within Objects

**Stored Property** မၢႆထိုင် Variable ဢမ်ႇၼၼ် Constant ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼႂ်း Struct ဢမ်ႇၼၼ် Class တွၼ်ႈတႃႇၵဵပ်းၵႃႈၶၼ် (Value) ဝႆႉယဝ်ႉ။

### 1. Variable (`var`) vs Constant (`let`) Properties
*   **`var` (Variable):** ၵႃႈၶၼ်ဢၼ်ၸၢင်ႈလႅၵ်ႈလၢႆႈလႆႈ ဝၢႆးသေႁဝ်းသၢင်ႈ Object ယဝ်ႉ။
*   **`let` (Constant):** ၵႃႈၶၼ်ဢၼ်တေမၼ်ႈၵိုမ်းသေႇသေႇ ဝၢႆးသေသၢင်ႈ Object ယဝ်ႉ။

```swift
struct ShanKey {
    let character: String // တူဝ်လိၵ်ႈဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈ
    var isPressed: Bool   // သၢႆငၢႆဢၼ်လႅၵ်ႈလၢႆႈလႆႈ
}
```

---

### 2. Mutability ၶေႃ Struct
ၼႂ်း Struct ၼႆႉ သင်ႁဝ်းသၢင်ႈ Object လူၺ်ႈၸႂ်ႉ **`let`** ၼႆ ႁဝ်းတေဢမ်ႇၸၢင်ႈလႅၵ်ႈလၢႆႈ `var` property ၽၢႆႇၼႂ်းမၼ်းလႆႈယဝ်ႉ။
ၵွပ်ႈ Struct ပဵၼ် Value Type လႄႈ တင်းတူဝ်မၼ်းၵေႃႈ တေပဵၼ် Constant ၵႂႃႇတင်းသဵင်ႈယဝ်ႉ။

```swift
var key1 = ShanKey(character: "ၵ", isPressed: false)
key1.isPressed = true // ✅ မၢၼ်ႇမႅၼ်ႈ

let key2 = ShanKey(character: "ၶ", isPressed: false)
// key2.isPressed = true // ❌ Error: key2 ပဵၼ် Constant
```

---

### 3. Lazy Stored Properties (`lazy`)
မၢင်ၵမ်း ႁဝ်းၸၢင်ႈမီးၶေႃႈမုၼ်း ဢၼ်ၵိၼ် Memory ၼမ် ဢမ်ႇၼၼ် ဢဝ်ၸႂ်ႉၶၢဝ်းယၢမ်းႁိုင် ယဝ်ႉ။ သင်ၼၼ် ႁဝ်းၸၢင်ႈၸႂ်ႉ **`lazy`** တွၼ်ႈတႃႇသင်ႇ Swift ဝႃႈ: *"ယႃႇၼႅတ်ႈသၢင်ႈ Variable တူဝ်ၼႆႉ တေႃႇပေႃးမီးၵူၼ်းမႃးႁွင်ႉၸႂ်ႉမၼ်း (On-demand)"* ၼႆယဝ်ႉ။

*   `lazy` တေလႆႈပဵၼ် **`var`** သေႇသေႇ။

```swift
class KeyboardEngine {
    // တေပႂ်ႉတေႃႇပေႃးႁွင်ႉၸႂ်ႉ ၸင်ႇတေ Load Dictionary လူင်ၼႆႉ
    lazy var dictionary = ["ၵ": "ka", "ၶ": "kha"] 
}
```

---