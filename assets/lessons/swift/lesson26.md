## Lesson 26: Variadic, In-Out, and Default Parameters

ၼႂ်း Swift ၼႆႉ ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Parameter ႁႂ်ႈမၼ်းႁပ်ႉလႆႈၶေႃႈမုၼ်း လၢႆလၢႆပိူင် ၸွမ်းၼင်ႇသၢႆငၢႆဢၼ်ႁဝ်းလူဝ်ႇၸႂ်ႉယဝ်ႉ။

### 1. Default Parameters (ၵၢၼ်ပၼ်ၵႃႈၶၼ်ဝႆႉဢွၼ်တၢင်း)
ႁဝ်းၸၢင်ႈပၼ်ၵႃႈၶၼ်ဝႆႉ ၼႂ်း Parameter ၼၼ်ႉၵမ်းသိုဝ်ႈယဝ်ႉ။
ပေႃးဝႃႈမိူဝ်ႈႁွင်ႉၸႂ်ႉ ႁဝ်းဢမ်ႇသူင်ႇၶေႃႈမုၼ်းသင်မႃး မၼ်းတေဢဝ်ၵႃႈၶၼ် ဢၼ်ႁဝ်းပၼ်ဝႆႉၼၼ်ႉ ၸႂ်ႉယဝ်ႉ။

```swift
func setBrightness(level: Double = 0.5) {
    print("Setting brightness to \(level)")
}

setBrightness()             // Output: 0.5 (Default)
setBrightness(level: 1.0)    // Output: 1.0 (User input)
```

---

### 2. Variadic Parameters (ၵၢၼ်ႁပ်ႉၶေႃႈมูลလၢႆလၢႆတူဝ်)
သင်ဝႃႈႁဝ်းဢမ်ႇႁူႉဝႃႈ User တေသူင်ႇၶေႃႈမုၼ်းမႃးလၢႆတူဝ်ၼႆ ႁဝ်းၸၢင်ႈၸႂ်ႉ `...` ၽၢႆႇလင် Type မၼ်းယဝ်ႉ။
Swift တေဢဝ်ၶေႃႈမုၼ်းၸိူဝ်းၼၼ်ႉ မႃးၸတ်းၵၢၼ်ပဵၼ် **Array** ၼႂ်း Function ယဝ်ႉ။

```swift
func printKeys(_ keys: String...) {
    for key in keys {
        print("Key: \(key)")
    }
}

printKeys("ၵ", "ၶ", "င") // သူင်ႇၵႂႃႇၵႃႈႁိုဝ်ၵေႃႈလႆႈ
```

---

### 3. In-Out Parameters (ၵၢၼ်လႅၵ်ႈလၢႆႈ Variable ၽၢႆႇၼွၵ်ႈ)
Default မၼ်း Parameter တေပဵၼ် Constant (`let`) ဢၼ်ႁဝ်းလႅၵ်ႈလၢႆႈဢမ်ႇလႆႈယဝ်ႉ။
ၵူၺ်းၵႃႈ သင်ဝႃႈႁဝ်းၶႂ်ႈႁႂ်ႈ Function လႅၵ်ႈလၢႆႈၵႃႈၶၼ် Variable ဢၼ်ယူႇၽၢႆႇၼွၵ်ႈမၼ်းလႆႈ ႁဝ်းလူဝ်ႇၸႂ်ႉ **`inout`** ယဝ်ႉ။

*   မိူဝ်ႈႁွင်ႉၸႂ်ႉ လူဝ်ႇသႂ်ႇမၢႆ **`&`** ဝႆႉၽၢႆႇၼႃႈ Variable ၼၼ်ႉယဝ်ႉ။

```swift
var currentLayout = "Standard"

func updateLayout(to newLayout: inout String) {
    newLayout = "Namkhone"
}

updateLayout(to: &currentLayout)
print(currentLayout) // Output: "Namkhone"
```

---