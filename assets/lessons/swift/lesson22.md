## Lesson 22: Control Transfer Statements: break, continue, and fallthrough

**Control Transfer Statements** မၢႆထိုင် ၶေႃႈၵႂၢမ်းဢၼ်ၸႂ်ႉတွၼ်ႈတႃႇ "ပိၼ်ႈလႅၵ်ႈ" လၢႆးႁဵတ်းၵၢၼ်ၶေႃ Code ႁဝ်း
ႁႂ်ႈမၼ်းၶၢမ်ႈၵႂႃႇတီႈၼိုင်ႈ ဢမ်ႇၼၼ် ၵိုတ်းၵႂႃႇတီႈၼိုင်ႈယဝ်ႉ။

### 1. continue (ၶၢမ်ႈၵႂႃႇ ထႅင်ႈတူဝ်ၼိုင်ႈ)
`continue` တေလၢတ်ႈၼႄ Loop ဝႃႈ "ၵိုတ်းၵၢၼ်ႁဵတ်းတီႈတူဝ်ၼႆႉၵမ်းလဵဝ် သေၶၢမ်ႈၵႂႃႇတႄႇႁဵတ်းထႅင်ႈတူဝ်ၼိုင်ႈ (Next iteration) ၼႆယဝ်ႉ"။



```swift
let keys = ["ၵ", "ၶ", "!", "င"]

for key in keys {
    if key == "!" {
        continue // ပေႃးႁၼ် "!" ႁႂ်ႈၶၢမ်ႈၵႂႃႇ ဢမ်ႇလူဝ်ႇ Print
    }
    print("Processing key: \(key)")
}
// Output: ၵ, ၶ, င
```

---

### 2. break (ၵိုတ်းၵၢၼ်ႁဵတ်းၵမ်းလဵဝ်)
`break` တေသင်ႇႁႂ်ႈ Loop ဢမ်ႇၼၼ် Switch **ၵိုတ်းၵၢၼ်ႁဵတ်းၵမ်းလဵဝ်** သေ ဢွၵ်ႇၵႂႃႇၽၢႆႇၼွၵ်ႈ Scope ၼၼ်ႉယဝ်ႉ။

```swift
for i in 1...100 {
    if i == 5 {
        break // ပေႃးထိုင် 5 ႁႂ်ႈၵိုတ်း Loop တင်းသဵင်ႈၵမ်းလဵဝ်
    }
    print(i)
}
// Output: 1, 2, 3, 4
```

---

### 3. fallthrough (လူင်းၵႂႃႇ Case ၽၢႆႇတႂ်ႈ)
ၼႂ်း Swift ၼၼ်ႉ `switch` တေဢမ်ႇလူင်းၵႂႃႇ Case ၽၢႆႇတႂ်ႈႁင်းၵူၺ်း။ 
ပေႃးႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ် Case တူဝ်ၽၢႆႇတႂ်ႈမၼ်းၸွမ်း ႁဝ်းလူဝ်ႇၸႂ်ႉ `fallthrough` ၶႃႈ။

```swift
let level = 1
var message = "You are at level \(level)."

switch level {
case 1:
    message += " (Beginner)"
    fallthrough // ႁႂ်ႈလူင်းၵႂႃႇႁဵတ်း Case 2 ၸွမ်း
case 2:
    message += " - Keep going!"
default:
    break
}
print(message) 
// Output: You are at level 1. (Beginner) - Keep going!
```

---

---