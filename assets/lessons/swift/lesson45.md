## Lesson 45: Computed Properties: Calculations Disguised as Data

**Computed Property** ပဵၼ် Property ဢၼ်ဢမ်ႇၵဵပ်း (Store) ၵႃႈၶၼ်ဝႆႉတေႉတေႉလႄႈ မၼ်းတေ "ၼပ်ႉသွၼ်ႇ" (Calculate) ၵႃႈၶၼ်ဢွၵ်ႇမႃးမႂ်ႇ ၵူႈပွၵ်ႈ ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉမၼ်းယဝ်ႉ။

### 1. Syntax ၵၢၼ်သၢင်ႈ (Getter Only)
ႁဝ်းတေလႆႈၸႂ်ႉ **`var`** သေႇသေႇ ၵွပ်ႈၵႃႈၶၼ်မၼ်း ၸၢင်ႈလႅၵ်ႈလၢႆႈၸွမ်း သၢႆငၢႆတၢင်ႇမဵဝ်းယဝ်ႉ။

```swift
struct KeySquare {
    var size: Double
    
    // Computed Property (Getter)
    var area: Double {
        return size * size
    }
}

let smallKey = KeySquare(size: 40)
print(smallKey.area) // Output: 1600.0
```

---

### 2. Getters လႄႈ Setters
ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈတင်း ၵၢၼ် "ဢဝ်" ၵႃႈၶၼ် (`get`) လႄႈ ၵၢၼ် "ပၼ်" ၵႃႈၶၼ် (`set`) ၼင်ႇၼႆယဝ်ႉ။

```swift
struct KeyboardConfig {
    var padding: Double = 10
    
    var totalMargin: Double {
        get {
            return padding * 2
        }
        set(newValue) {
            padding = newValue / 2
        }
    }
}

var config = KeyboardConfig()
config.totalMargin = 30 // ၼႆႉတေၵႂႃႇသင်ႇ set(30)
print(config.padding)   // Output: 15.0
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Computed Property?
1.  **Don't Repeat Yourself (DRY):** တွၼ်ႈတႃႇဝႄႈလွင်ႈ ၵဵပ်းၶေႃႈမုၼ်း ဢၼ်ၵွင်ႉသၢၼ်ၵၼ် (မိူၼ်ၼင်ႇ ဢမ်ႇလူဝ်ႇၵဵပ်းတင်း `radius` လႄႈ `diameter`၊ ၵဵပ်းတူဝ်ၼိုင်ႈသေ တႅမ်ႈထႅင်ႈတူဝ်ၼိုင်ႈပဵၼ် Computed Property တေလီလိူဝ်)။
2.  **Clean Interface:** ႁဵတ်းႁႂ်ႈၵူၼ်းၸႂ်ႉ Code ႁဝ်း ၸၢင်ႈဢဝ်ၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈ မိူၼ်ၼင်ႇႁွင်ႉၸႂ်ႉ Variable ထမ်ႇမတႃႇ။
3.  **Real-time Updates:** မၼ်းတေပၼ်ၵႃႈၶၼ်ဢၼ်မႂ်ႇသုတ်း (Fresh value) သေႇသေႇ။

---