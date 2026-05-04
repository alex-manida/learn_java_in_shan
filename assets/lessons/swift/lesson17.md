## Lesson 17: The if and else Power Moves: Conditional Logic

**Conditional Logic** ပဵၼ်ပိုၼ်ႉထၢၼ်သုတ်းยอด ဢၼ်တေၸွႆးႁႂ်ႈ Keyboard ႁဝ်းႁူႉဝႃႈ "သင်ဝႃႈ User ၼိပ်ႉ Key ၼႆႉ ႁႂ်းႁဵတ်းၸိူင်ႉၼႆ" ၼႆယဝ်ႉ။ ၼႂ်း Swift ႁဝ်းၸႂ်ႉ `if` လႄႈ `else` တွၼ်ႈတႃႇတတ်းသိၼ်ၸႂ်ၶႃႈ။

### 1. Basic if Statement
ၼႂ်း Swift ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇဝူင်းလႅမ်ႈ `()` တီႈသၢႆငၢႆ (Condition) မၼ်းၵေႃႈလႆႈ၊ ၵူၺ်းၵႃႈလူဝ်ႇမီး `{}` တႃႇၵုမ်း Code ႁဝ်းၵူႈပွၵ်ႈၶႃႈ။

```swift
let isShiftEnabled = true

if isShiftEnabled {
    print("တေၼႄတူဝ်လိၵ်ႈယႂ်ႇ (Uppercase)")
}
```

### 2. else လႄႈ else if
မိူဝ်ႈမီးလၢႆလၢႆသၢႆငၢႆ ႁဝ်းၸၢင်ႈၸႂ်ႉ `else if` သိုပ်ႇၵၼ်ၵႂႃႇလႆႈယဝ်ႉ။

```swift
let currentLayout = "Namkhone"

if currentLayout == "Standard" {
    print("Loading Standard Layout...")
} else if currentLayout == "Namkhone" {
    print("Loading Namkhone Layout...")
} else {
    print("Loading Default Layout...")
}
```

---

### 3. Logic Operators in if
ႁဝ်းၸၢင်ႈဢဝ် `&&` (AND), `||` (OR), လႄႈ `!` (NOT) မႃးၸႂ်ႉႁူမ်ႈၵၼ် တွၼ်ႈတႃႇတတ်းသိၼ်ၸႂ် လွင်ႈဢၼ်ယၢပ်ႇလိူဝ်ၵဝ်ႇ။

```swift
let hasAccess = true
let isProVersion = false

if hasAccess && isProVersion {
    print("ၸႂ်ႉလႆႈ Feature ၶိုၵ်ႉတွၼ်းတင်းသဵင်ႈၶႃႈ")
} else if hasAccess || isProVersion {
    print("ၸႂ်ႉလႆႈမၢင်ပိူင်ၵူၺ်းၶႃႈ")
}
```

---

### 4. Inline if (Ternary Operator)
ပေႃးႁဝ်းလူဝ်ႇတတ်းသိၼ်ၸႂ်ငၢႆႈငၢႆႈ ၼႂ်းထႅဝ်လဵဝ် (One-liner) ႁဝ်းၸႂ်ႉ `condition ? valueIfTrue : valueIfFalse` လႆႈၶႃႈ။

```swift
let score = 85
let result = score >= 50 ? "Pass" : "Fail"
print(result) // Output: "Pass"
```

---

### 5. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸႂ်ႉ `if` မိူဝ်ႈလူဝ်ႇၵူတ်ႇထတ်းသၢႆငၢႆ 1-2 မဵဝ်း။ သင်ဝႃႈသၢႆငၢႆမၼ်းၼမ်လိူဝ် 3 မဵဝ်းၶိုၼ်းၼိူဝ် (မိူၼ်ၼင်ႇၵၢၼ်လိူၵ်ႈ Layout) ႁဝ်းတေၸႂ်ႉ `switch` ဢၼ်တေႁဵၼ်းၼႂ်း Lesson တၢင်ႇဢၼ်ၼၼ်ႉ တေလီလိူဝ်ၶႃႈ။"**

---