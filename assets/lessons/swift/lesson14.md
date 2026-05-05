## Lesson 14: Tuples: Quick Data Grouping without the Overhead of Structs

**Tuple** ၼႆႉ ပဵၼ်လၢႆးဢဝ်ၶေႃႈมูลလၢႆလၢႆမဵဝ်း (Different Types) မႃး "ၵူပ်ႉၵၼ်" ဝႆႉပဵၼ်တူဝ်လဵဝ် ႁႂ်ႈမၼ်းငၢႆႈတွၼ်ႈတႃႇသူင်ႇၵႂႃႇသူင်ႇမႃး (Temporary grouping)။ မၼ်းဢမ်ႇလူဝ်ႇသၢင်ႈ Struct ဢမ်ႇၼၼ် Class ႁႂ်ႈမၼ်းၼၵ်းၶိူင်ႈ (Overhead) ၶႃႈ။

### 1. ၵၢၼ်သၢင်ႈ Tuple
ႁဝ်းၸႂ်ႉဝူင်းလႅမ်ႈ `()` သေ ၶၼ်ႈလူၺ်ႈ `,` (Comma) ၶႃႈ။

```swift
// 1. သၢင်ႈ Tuple ဢၼ်ဢမ်ႇမီးၸိုဝ်ႈ (Unnamed Tuple)
let keyPosition = (1, 10) 

// 2. သၢင်ႈ Tuple ဢၼ်မီးၸိုဝ်ႈ (Named Tuple) - ဢၼ်ၼႆႉလူငၢႆႈလိူဝ်
let keyData = (row: 1, column: 10, label: "ၵ")
```

---

### 2. ၵၢၼ်သိုပ်ႇထိုင်ၶေႃႈมูล (Accessing Elements)
*   **လူၺ်ႈမၢႆ Index:** ၸႂ်ႉ `.` ၸွမ်းလူၺ်ႈမၢႆ 0, 1, 2...
*   **လူၺ်ႈၸိုဝ်ႈ (Name):** ပေႃးႁဝ်းမၵ်းမၼ်ႈၸိုဝ်ႈဝႆႉ ႁဝ်းၸႂ်ႉၸိုဝ်ႈမၼ်းလႆႈၵမ်းသိုဝ်ႈ။

```swift
print(keyData.label)  // "ၵ"
print(keyData.0)      // 1 (row)
```

---

### 3. Tuple Decomposition (ၵၢၼ်ၸႅၵ်ႇ Tuple)
ႁဝ်းၸၢင်ႈၸႅၵ်ႇၶေႃႈมูล ၼႂ်း Tuple မႃးသႂ်ႇၼႂ်း Variable တူဝ်တၢင်ႇတူဝ်လႆႈငၢႆႈငၢႆႈၶႃႈ။

```swift
let (r, c, l) = keyData
print("Row ပဵၼ် \(r) လႄႈ Label ပဵၼ် \(l)")

// သင်ဝႃႈၶႂ်ႈဢဝ်ၵူၺ်းမၢင်တူဝ် ႁဝ်းၸႂ်ႉ `_` ဝႆႉလႆႈ
let (row, _, _) = keyData 
```

---

### 4. ၵၢၼ်ၸႂ်ႉၼႂ်း Function
Tuple မီးၼမ်ႉၵတ်ႉလိူဝ်ပိူၼ်ႈ မိူဝ်ႈႁဝ်းလူဝ်ႇထုတ်ႇဢွၵ်ႇ (Return) ၶေႃႈมูล လၢႆလၢႆမဵဝ်း ဢွၵ်ႇၼႂ်း Function ၼိုင်ႈဢၼ်ယဝ်ႉ။

```swift
func getKeyboardInfo() -> (name: String, layouts: Int) {
    return ("TMK Keyboard", 4)
}

let info = getKeyboardInfo()
print("\(info.name) has \(info.layouts) layouts")
```

---