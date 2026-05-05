## Lesson 48: Initializers: Safely Setting Up your Objects with init()

**Initializer** (ဢမ်ႇၼၼ်ႁဝ်းႁွင်ႉပွတ်းပွတ်းဝႃႈ **`init`**) ပဵၼ် Method မဵဝ်းၼိုင်ႈ ဢၼ်တေႁဵတ်းၵၢၼ် "ၵမ်းလဵဝ်" မိူဝ်ႈႁဝ်းသၢင်ႈ Object ဢွၵ်ႇမႃးၼႂ်း Struct ဢမ်ႇၼၼ် Class ယဝ်ႉ။
ၼႃႈတီႈမၼ်းတႄႉ ပဵၼ်ၵၢၼ်ပၼ်ၵႃႈၶၼ် (Value) တႄႇမၼ်း ႁႂ်ႈ Property ၵူႈတူဝ်မီးၶေႃႈမုၼ်းဝႆႉယဝ်ႉ။

### 1. Default Initializers
ၼႂ်း Struct, Swift တေတႅမ်ႈ `init` ပၼ်ႁဝ်းႁင်းၵူၺ်း (Memberwise Init) ယဝ်ႉ။
ၵူၺ်းၵႃႈၼႂ်း Class ႁဝ်းတေလႆႈတႅမ်ႈမၼ်းႁင်းၵူၺ်း သင်ႁဝ်းဢမ်ႇပၼ်ၵႃႈၶၼ် Property ဝႆႉဢွၼ်တၢင်းၶႃႈ။

```swift
class KeyboardKey {
    var label: String
    var color: String
    
    // Custom Initializer
    init(label: String, color: String = "Gray") {
        self.label = label
        self.color = color
    }
}

let key1 = KeyboardKey(label: "ၵ") // color တေပဵၼ် Gray ၸွမ်း Default
```

### 2. ၵၢၼ်ၸႂ်ႉ `self`
ႁဝ်းၸႂ်ႉ **`self`** တွၼ်ႈတႃႇၸႅၵ်ႇဝႃႈ "ၼႆႉပဵၼ် Property ၶေႃ Object" လႄႈ "ၼႆႉပဵၼ် Parameter ဢၼ်သူင်ႇၶဝ်ႈမႃးၼႂ်း init" ၶႃႈ။

---

### 3. Failable Initializers (`init?`)
ၵမ်းမၢင် ၵၢၼ်သၢင်ႈ Object ၸၢင်ႈ "တူၵ်းလွတ်ႈ" (Fail) လႆႈ သင်ၶေႃႈมูลဢၼ်သူင်ႇမႃးဢမ်ႇထုၵ်ႇ။ ႁဝ်းတေၸႂ်ႉ **`init?`** သေမၼ်းတေသူင်ႇ Optional Object ဢွၵ်ႇမႃးၶႃႈ။

```swift
struct UnicodeKey {
    var code: Int
    
    init?(code: Int) {
        if code < 0 { return nil } // သင် code တႅမ်ႇလိူဝ် 0 ႁႂ်ႈ Fail
        self.code = code
    }
}
```

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸၢႆးမၢဝ်းၸၢင်ႈၸႂ်ႉ `init` တွၼ်ႈတႃႇမၵ်းမၼ်ႈ 'Size' ၶေႃ Keyboard ႁႂ်ႈမၼ်းၵိုၵ်းၵပ်းၸွမ်း 'Size Screen' ၶေႃ iPhone တူဝ်ၼၼ်ႉတႄႇတႄႉ။ ပေႃးႁဝ်းသၢင်ႈ Keyboard ဢွၵ်ႇမႃး ႁဝ်းၵေႃႈသူင်ႇ Screen Width ၶဝ်ႈၵႂႃႇၼႂ်း `init` ယဝ်ႉ ႁႂ်းမၼ်းၼပ်ႉသွၼ်ႇပၼ်ႁင်းၵူၺ်းလႆႈယဝ်ႉၶႃႈ။"**

---