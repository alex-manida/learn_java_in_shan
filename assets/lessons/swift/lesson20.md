## Lesson 20: For-In Loops: Iterating Over Ranges and Collections

**`for-in`** loop ပဵၼ်လၢႆးဢၼ်ႁဝ်းၸႂ်ႉ "ဢၢၼ်ႇ" ၶေႃႈမုၼ်း ဢၼ်မီးပဵၼ်မူႇပဵၼ်ၸုမ်း (Collections) ဢမ်ႇၼၼ် 
ၸွမ်းၼင်ႇသဵၼ်ႈမၢႆတူဝ်ၼပ်ႉ (Ranges) ယဝ်ႉ။ မၼ်းလူငၢႆႈ လႄႈ မီးလွင်ႈလွတ်ႈၽေးသုင်တႄႉတႄႉၶႃႈ။

### 1. Iterating Over Ranges (ၵၢၼ်ဢၢၼ်ႇၸွမ်းတူဝ်ၼပ်ႉ)
ႁဝ်းၸႂ်ႉ `...` တွၼ်ႈတႃႇဢဝ်တင်းတူဝ်လိုၼ်းသုတ်ႉ ဢမ်ႇၼၼ် `..<` တွၼ်ႈတႃႇဢဝ်ဢေႇလိူဝ်တူဝ်လိုၼ်းသုတ်ႉ 1 တူဝ်ၶႃႈ။

```swift
// ဢၢၼ်ႇ 1 ထိုင် 5
for index in 1...5 {
    print("ပွၵ်ႈၵမ်း \(index)")
}

// ဢၢၼ်ႇ 1 ထိုင် 4 (ဢမ်ႇဢဝ် 5)
for i in 1..<5 {
    print("Value is \(i)")
}
```

---

### 2. Iterating Over Collections (ၵၢၼ်ဢၢၼ်ႇၼႂ်း Array/Set)
ဢၼ်ၼႆႉတေလႆႈၸႂ်ႉၼမ်ပိူၼ်ႈ တွၼ်ႈတႃႇဢဝ်တူဝ်လိၵ်ႈၼႂ်း Keyboard ႁဝ်းဢွၵ်ႇမႃးၼႄၶႃႈ။

```swift
let keyRow = ["ၵ", "ၶ", "င", "ၸ"]

for key in keyRow {
    print("ၼဵၵ်း Key: \(key)")
}
```

---

### 3. Iterating Over Dictionaries
မိူဝ်ႈႁဝ်းဢၢၼ်ႇ Dictionary ၼၼ်ႉ Swift တေထုတ်ႇဢွၵ်ႇမႃးပဵၼ် **Tuple** (key, value) ႁႂ်ႈႁဝ်းၸႂ်ႉလႆႈငၢႆႈငၢႆႈၶႃႈ။

```swift
let layoutMap = ["a": "ႃ", "s": "သ"]

for (key, character) in layoutMap {
    print("ပေႃးၼဵၵ်း \(key) တေဢွၵ်ႇ \(character)")
}
```

---

### 4. ၵၢၼ်ၸႂ်ႉ `_` (Wildcard)
သင်ဝႃႈႁဝ်းၶႂ်ႈႁဵတ်းၵၢၼ် "လၢႆလၢႆပွၵ်ႈ" ၵူၺ်း၊ ၵူၺ်းၵႃႈဢမ်ႇလူဝ်ႇၸႂ်ႉတူဝ်ၼပ်ႉ (Index) မၼ်းၼႆ ႁဝ်းၸႂ်ႉ `_` တႅၼ်းလႆႈၶႃႈ။

```swift
for _ in 1...3 {
    print("သွင်ႇသဵင် (Beep!)")
}
```

---