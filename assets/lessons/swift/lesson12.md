## Lesson 12: Dictionaries (Part 2): Handling Missing Keys and Default Values Safely

မိူဝ်ႈႁဝ်းႁႃၶေႃႈมูลၼႂ်း Dictionary ၼၼ်ႉ လွင်ႈဢၼ် "ႁႃဢမ်ႇႁၼ်" ပဵၼ်လွင်ႈဢၼ်ၸၢင်ႈပဵၼ်လႆႈၵူႈပွၵ်ႈယဝ်ႉ။ သင်ဝႃႈႁဝ်းဢမ်ႇၸတ်းၵၢၼ်ဝႆႉလီလီ App ႁဝ်းၸၢင်ႈမီး Error လႆႈ။ Swift မီးလၢႆးၸတ်းၵၢၼ်ဢၼ်လွတ်ႈၽေး (Safe) တႄႉတႄႉၶႃႈ။

### 1. Accessing with Default Values
ဢၼ်ၼႆႉပဵၼ်လၢႆးဢၼ်လီပိူၼ်ႈၶႃႈ။ ႁဝ်းၸၢင်ႈသင်ႇဝႆႉဝႃႈ "ပေႃးႁႃ Key ၼႆႉဢမ်ႇႁၼ် ႁႂ်ႈဢဝ်ၵႃႈၶၼ် (Default Value) ဢၼ်ၼႆႉပၼ်တႅၼ်း" ၼႆယဝ်ႉ။

```swift
let layoutMap = ["a": "ႃ", "s": "သ"]

// ပေႃးႁႃ "z" ဢမ်ႇႁၼ် ႁႂ်ႈမၼ်းဢွၵ်ႇပဵၼ် "Not Found"
let character = layoutMap["z", default: "Unknown Key"]
print(character) // Output: "Unknown Key" (ဢမ်ႇၸႂ်ႈ Optional ယဝ်ႉ)
```
*   **တၢင်းလီ:** မၼ်းတေထုတ်ႇဢွၵ်ႇမႃးပဵၼ် Type တႄႇတႄႇမၼ်း (String) ၵမ်းသိုဝ်ႈ၊ ဢမ်ႇၸႂ်ႈ Optional လႄႈ ႁဝ်းဢဝ်ၵႂႃႇၸႂ်ႉလႆႈငၢႆႈငၢႆႈယဝ်ႉ။

---

### 2. Updating with Default Values
မိူဝ်ႈႁဝ်းလူဝ်ႇၼပ်ႉသွၼ်ႇ (Count) ၶေႃႈมูล ၼႂ်း Dictionary ႁဝ်းၸၢင်ႈၸႂ်ႉ `default` ၸွႆးလႆႈၶႃႈ။

```swift
var keyUsageCount = ["ၵ": 10, "ၶ": 5]

// ထႅမ်မၢႆၵၢၼ်ၸႂ်ႉတူဝ် "င"။ ပေႃးပႆႇမီး ႁႂ်ႈတႄႇတီႈ 0 သေပၢပ်ႉ 1
keyUsageCount["င", default: 0] += 1

print(keyUsageCount["င"]!) // 1
```

---

### 3. Filtering and Mapping Dictionaries
မိူၼ်ၼင်ႇ Array ၼင်ႇၵဝ်ႇ၊ ႁဝ်းၸၢင်ႈ `filter` ဢဝ်ၵူၺ်း ၶေႃႈมูล ဢၼ်ႁဝ်းၶႂ်ႈလႆႈၼႂ်း Dictionary။

```swift
let students = ["Zai": 85, "Mao": 45, "Hom": 90]

// ဢဝ်ၵူၺ်းလုၵ်ႈႁဵၼ်းဢၼ်တွပ်ႇပူၼ်ႉ (>= 50)
let passedStudents = students.filter { $0.value >= 50 }
// Output: ["Zai": 85, "Hom": 90]
```

---

### 4. Dictionary Grouping
Swift မီး Function ဢၼ်ၶႅၼ်ႇတႄႉတႄႉ တွၼ်ႈတႃႇဢဝ် Array မႃးၸႅၵ်ႇပဵၼ်မူႇ (Group) ၼႂ်း Dictionary ၶႃႈ။

```swift
let allKeys = ["ၵ", "ၶ", "င", "ၸ", "သ"]

// ၸႅၵ်ႇတူဝ်လိၵ်ႈၸွမ်းၼင်ႇ တူဝ်တႄႇမၼ်း
let groupedKeys = Dictionary(grouping: allKeys) { $0.first! }
```

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: မိူဝ်ႈ User ၼိပ်ႉ Key ဢၼ်ဢမ်ႇမီးၼႂ်း Layout (မိူၼ်ၼင်ႇ Key Function တၢင်ႇပိူင်)၊ ႁဝ်းလူဝ်ႇၸႂ်ႉ `default: ""` တွၼ်ႈတႃႇႁႂ်ႈမၼ်းဢွၵ်ႇမႃးပဵၼ် String ဝၢင်ႇဝႆႉ တႅၼ်းလွင်ႈဢၼ်တေပၼ် App Crash ၼၼ်ႉယဝ်ႉ။"**

---