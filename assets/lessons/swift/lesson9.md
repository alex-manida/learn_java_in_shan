## Lesson 9: Arrays (Part 1): Creating and Manipulating Ordered Lists

**Array** မၢႆထိုင် ၵၢၼ်သိမ်းၶေႃႈมูล မဵဝ်းလဵဝ်ၵၼ် (Same Type) ႁႂ်ႈမၼ်းပဵၼ်သဵၼ်ႈမၢႆ (List) သေ မီးလွင်ႈၸႅၵ်ႇထႅဝ်ၸွမ်းၼင်ႇလຳดับ (Ordered) မၼ်းယဝ်ႉ။



### 1. ၵၢၼ်သၢင်ႈ Array (Creating Arrays)
ၼႂ်း Swift ႁဝ်းၸႂ်ႉၶွပ်ႇပဵတ်း `[]` တွၼ်ႈတႃႇမၵ်းမၼ်ႈ Array ၶႃႈ။

```swift
// 1. သၢင်ႈ Array လူၺ်ႈ Type Inference (Swift ႁူႉဝႃႈပဵၼ် [String] ႁင်းၵူၺ်း)
let layouts = ["Standard", "Namkhone", "Panglong"]

// 2. သၢင်ႈ Array ဝၢင်ႇဝႆႉ (Empty Array) ဢၼ်မၵ်းမၼ်ႈ Type ဝႆႉ
var selectedKeys: [String] = []
var counts = [Int]() // လၢႆးတႅမ်ႈထႅင်ႈမဵဝ်းၼိုင်ႈ
```

---

### 2. ၵၢၼ်သိုပ်ႇထိုင်ၶေႃႈมูล (Accessing Elements)
Array တေတႄႇဢၢၼ်ႇမၢႆ (Index) တီႈ **0** ၵူႈပွၵ်ႈၶႃႈ။

```swift
let keyboards = ["TMK", "Standard", "Panglong"]

print(keyboards[0]) // ဢွၵ်ႇမႃး "TMK"
print(keyboards[1]) // ဢွၵ်ႇမႃး "Standard"
```
> **သတိ (Warning):** ယႃႇပေဢၢၼ်ႇ Index ဢၼ်မၼ်းဢမ်ႇမီး (Out of bounds) မိူၼ်ၼင်ႇ `keyboards[5]` ၼႆ၊ App တေ Crash ၵမ်းလဵဝ်ၶႃႈ။

---

### 3. ၵၢၼ်ထႅမ်လႄႈၵၢၼ်လႅၵ်ႈလၢႆႈ (Modifying Arrays)
တွၼ်ႈတႃႇလႅၵ်ႈလၢႆႈလႆႈၼၼ်ႉ Array လူဝ်ႇလႆႈပဵၼ် `var` (Mutable) ၵူၺ်းၶႃႈ။

*   **`.append()`**: ထႅမ်ၶေႃႈมูล မႂ်ႇသႂ်ႇၽၢႆႇလင်သုတ်း။
*   **`.insert(at:)`**: သႂ်ႇၶေႃႈมูล တီႈမၢႆ (Index) ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ။
*   **`+=`**: ဢဝ် Array သွင်ဢၼ်မႃးပၢပ်ႉၸူးၵၼ်။

```swift
var myLetters = ["ၵ", "ၶ"]
myLetters.append("င")            // ["ၵ", "ၶ", "င"]
myLetters.insert("င", at: 2)     // သႂ်ႇ "င" တီႈ Index 2
myLetters[0] = "ၵၵ"              // လႅၵ်ႈၵႃႈၶၼ်တီႈ Index 0
```

---

### 4. ၵၢၼ်လူတ်းဢွၵ်ႇ (Removing Elements)
*   **`.remove(at:)`**: ဢဝ်ဢွၵ်ႇၸွမ်းၼင်ႇ Index ဢၼ်မၵ်းမၼ်ႈ။
*   **`.removeLast()`**: ဢဝ်တူဝ်ၽၢႆႇလင်သုတ်းဢွၵ်ႇ။
*   **`.removeAll()`**: လၢင်ႉပႅတ်ႈတင်းသဵင်ႈ။

```swift
var students = ["Zai", "Mao", "Hom"]
let removedStudent = students.remove(at: 1) // "Mao" တေထုၵ်ႇဢဝ်ဢွၵ်ႇ
```

---

### 5. Properties ဢၼ်လွင်ႈယႂ်ႇ
*   **`.count`**: ဢၢၼ်ႇတူဝ်ၼမ်ၼႂ်း Array။
*   **`.isEmpty`**: ၵူတ်ႇထတ်းဝႃႈ Array ဝၢင်ႇဝႆႉႁႃႉ။
*   **`.contains()`**: ၵူတ်ႇထတ်းဝႃႈ မီးၶေႃႈมูล ဢၼ်ႁဝ်းႁႃၼၼ်ႉယူႇၼႂ်း Array ႁႃႉ။

```swift
let layoutNames = ["Standard", "Namkhone"]
if layoutNames.contains("Panglong") {
    print("မီး Layout Panglong ယဝ်ႉၶႃႈ")
} else {
    print("ပႆႇမီး Layout Panglong ၶႃႈ")
}
```

---