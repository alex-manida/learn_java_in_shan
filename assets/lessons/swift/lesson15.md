## Lesson 15: Collection Protocols: Understanding Indexing and Sequences

ၼႂ်းလိၵ်ႈ Swift ၼႆႉ Array, Dictionary, ลႄႈ Set တင်းသဵင်ႈၼၼ်ႉ မၼ်းမီး "ပၵ်းပဝ်း" (Protocols) ဢၼ်မိူၼ်ၵၼ်ဝႆႉယူႇၽၢႆႇတႂ်ႈမၼ်းယဝ်ႉ။ ၵွပ်ႈၼၼ် ႁဝ်းၸင်ႇၸႂ်ႉ `.count` ဢမ်ႇၼၼ် `.isEmpty` လႆႈမိူၼ်ၵၼ်တင်းသဵင်ႈၼၼ်ႉၶႃႈ။

### ### 1. Sequence Protocol
**Sequence** မၢႆထိုင် ၶေႃႈมูล ဢၼ်ႁဝ်းၸၢင်ႈ "ဢၢၼ်ႇၸွမ်းလຳดับ" (Iterate) လႆႈယဝ်ႉ။ ပေႃးမဵဝ်းၶေႃႈมูลလႂ် conforms ၸူး Protocol ၼႆႉ ႁဝ်းတေၸႂ်ႉ `for-in` loop ဢၢၼ်ႇတူၺ်းမၼ်းလႆႈၵူႈပွၵ်ႈၶႃႈ။

```swift
let keys = ["ၵ", "ၶ", "င"]
for key in keys {
    print(key)
}
```

---

### 2. Collection Protocol
**Collection** ၼႆႉ မၼ်းသိုပ်ႇမႃးၼႂ်း Sequence ထႅင်ႈၵမ်းၼိုင်ႈ။ မၼ်းမၵ်းမၼ်ႈဝႃႈ ၶေႃႈมูลၼၼ်ႉ လူဝ်ႇမီး:
*   **StartIndex** လႄႈ **EndIndex** (မၢႆတႄႇလႄႈမၢႆသုတ်း)။
*   **Subscripting:** ၵၢၼ်ၸႂ်ႉ `[]` တွၼ်ႈတႃႇႁႃၶေႃႈมูลၸွမ်းမၢႆ Index။

```swift
let firstKey = keys[keys.startIndex]
let lastIndex = keys.index(before: keys.endIndex)
```

---

### 3. Indexing in Collections
ဢၼ်ၼႆႉပဵၼ်လွင်ႈသတိၶႃႈ။ ၼႂ်း Array မၢႆ Index တေပဵၼ်တူဝ်เลข (0, 1, 2)။ ၵူၺ်းၵႃႈၼႂ်း **String** ၼၼ်ႉ Swift ဢမ်ႇပၼ်ႁဝ်းၸႂ်ႉ `Int` မႃးႁႃ Index ၵမ်းသိုဝ်ႈ (မိူၼ်ၼင်ႇ `myString[0]`)။ ၵွပ်ႈဝႃႈ Unicode တူဝ်လိၵ်ႈတႆးႁဝ်း မၼ်းမီးတူဝ်ၼမ်ဢမ်ႇမိူၼ်ၵၼ်၊ Swift ၸင်ႇလူဝ်ႇၸႂ်ႉ `String.Index` တႅၼ်းၶႃႈ။

```swift
let word = "တႆး"
let firstChar = word[word.startIndex] // "တ"
```

---

### 4. Multi-pass Iteration
Collection Protocols ပၼ်ႁဝ်းဢၢၼ်ႇၶေႃႈมูล "လၢႆလၢႆပွၵ်ႈ" လႆႈ (Multi-pass)၊ မၼ်းဢမ်ႇမိူၼ်ၼင်ႇ Generator မၢင်မဵဝ်း ဢၼ်ဢၢၼ်ႇယဝ်ႉယဝ်ႉၵႂႃႇၶႃႈ။ မၼ်းတေၵဵပ်းၵႃႈၶၼ် Index ဝႆႉသေ ႁႂ်းႁဝ်းၶိုၼ်းမႃးႁႃတီႈၵဝ်ႇလႆႈၵူႈပွၵ်ႈယဝ်ႉ။

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: မိူဝ်ႈႁဝ်းတႅမ်ႈ Function တွၼ်ႈတႃႇၸတ်းၵၢၼ် Keyboard Layout၊ ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ Parameter ႁႂ်ႈပဵၼ် `Collection` တႅၼ်းဢၼ်တေမၵ်းမၼ်ႈပဵၼ် `Array`။ လၢႆးၼႆႉ တေႁဵတ်းႁႂ်ႈ Function ႁဝ်းၸႂ်ႉလႆႈတင်း Array, Set ဢမ်ႇၼၼ် Dictionary.Values ၵမ်းသိုဝ်ႈယဝ်ႉ။"**

---