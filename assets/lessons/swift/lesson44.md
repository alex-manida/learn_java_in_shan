## Lesson 44: Stored Properties: Constant and Variable Data within Objects

**Stored Property** မၢႆထိုင် Variable ဢမ်ႇၼၼ် Constant ဢၼ်ႁဝ်းမၵ်းမၼ်ႈဝႆႉၼႂ်း Struct ဢမ်ႇၼၼ် Class တွၼ်ႈတႃႇၵဵပ်းၵႃႈၶၼ် (Value) ဝႆႉတႄႇတႄႉၶႃႈ။

### 1. Variable (`var`) vs Constant (`let`) Properties
*   **`var` (Variable):** ၵႃႈၶၼ်ဢၼ်ၸၢင်ႈလႅၵ်ႈလၢႆႈလႆႈ ဝၢႆးသေႁဝ်းသၢင်ႈ Object ယဝ်ႉ။
*   **`let` (Constant):** ၵႃႈၶၼ်ဢၼ်တေမၼ်ႈၵိုမ်းသေႇသေႇ ဝၢႆးသေသၢင်ႈ Object ယဝ်ႉ။

```swift
struct ShanKey {
    let character: String // တူဝ်လိၵ်ႈဢၼ်ဢမ်ႇလႅၵ်ႈလၢႆႈ
    var isPressed: Bool   // သၢႆငၢႆဢၼ်လႅၵ်ႈလၢႆႈလႆႈ (ၼိပ်ႉယူႇႁႃႉ ဢမ်ႇၼိပ်ႉ)
}
```

---

### 2. Mutability ၶေႃ Struct (လွင်ႈလွင်ႈယႂ်ႇ!)
ၼႂ်း Struct, သင်ႁဝ်းသၢင်ႈ Object လူၺ်ႈၸႂ်ႉ **`let`**၊ ႁဝ်းတေဢမ်ႇၸၢင်ႈလႅၵ်ႈလၢႆႈ `var` property ၽၢႆႇၼႂ်းမၼ်းလႆႈၶႃႈ။ ၵွပ်ႈ Struct ပဵၼ် Value Type၊ တင်းတူဝ်မၼ်းတေပဵၼ် Constant ၵႂႃႇတင်းသဵင်ႈယဝ်ႉ။

```swift
var key1 = ShanKey(character: "ၵ", isPressed: false)
key1.isPressed = true // ✅ မၢၼ်ႇမႅၼ်ႈ

let key2 = ShanKey(character: "ၶ", isPressed: false)
// key2.isPressed = true // ❌ Error: key2 ပဵၼ် Constant
```

---

### 3. Lazy Stored Properties (`lazy`)
ၵမ်းမၢင် ႁဝ်းမီးၶေႃႈมูลဢၼ်ၵိၼ် Memory ၼမ် ဢမ်ႇၼၼ် ဢဝ်ၶၢဝ်းယၢမ်းၼပ်ႉသွၼ်ႇႁိုင်။ ႁဝ်းၸၢင်ႈၸႂ်ႉ **`lazy`** တွၼ်ႈတႃႇသင်ႇ Swift ဝႃႈ: *"ယႃႇပႆႇသၢင်ႈ Variable တူဝ်ၼႆႉ တေႃႇပေႃးမီးၵူၼ်းမႃးႁွင်ႉၸႂ်ႉမၼ်းတႄႇတႄႉ (On-demand)"*။

*   `lazy` တေလႆႈပဵၼ် **`var`** သေႇသေႇၶႃႈ။

```swift
class KeyboardEngine {
    // တေပႂ်ႉတေႃႇပေႃးႁွင်ႉၸႂ်ႉ ၸင်ႇတေ Load Dictionary လူင်ၼႆႉ
    lazy var dictionary = ["ၵ": "ka", "ၶ": "kha"] 
}
```

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: Property ဢၼ်ပဵၼ် 'တူဝ်လိၵ်ႈ (Label)' ၶေႃ Keyboard ထုၵ်ႇလီပဵၼ် `let` သေႇသေႇ တွၼ်ႈတႃႇလွင်ႈလွတ်ႈၽေး။ ၵူၺ်းၵႃႈ Property ဢၼ်ပဵၼ် 'သီ (Color)' ၼၼ်ႉ ၸၢင်ႈပဵၼ် `var` လႆႈ သင်ၸၢႆးမၢဝ်းၶႂ်ႈပၼ် User လႅၵ်ႈ Theme လႆႈၼႂ်း App ၼၼ်ႉယဝ်ႉ။"**

---