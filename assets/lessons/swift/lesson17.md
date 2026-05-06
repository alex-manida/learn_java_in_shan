## Lesson 17: The if and else Power Moves: Conditional Logic

**Conditional Logic** ပဵၼ်ပိုၼ်ႉထၢၼ်သုတ်း ဢၼ်တေၸွႆးႁႂ်ႈ Keyboard ႁဝ်းႁူႉဝႃႈ "သင်ဝႃႈ User ၼဵၵ်း Key ၼႆႉ ႁႂ်းႁဵတ်းၸိူင်ႉၼႆ" ၼႆယဝ်ႉ။
ၼႂ်း Swift ႁဝ်းၸႂ်ႉ `if` လႄႈ `else` တွၼ်ႈတႃႇ တႅပ်းတတ်းသဵၼ်ႈၸႂ်ယဝ်ႉ။

### 1. Basic if Statement
ၼႂ်း Swift ႁဝ်းဢမ်ႇလူဝ်ႇသႂ်ႇၶွပ်ႇမူၼ်း `()` တီႈသၢႆငၢႆ (Condition) မၼ်းၵေႃႈလႆႈ။
ၸႂ်ႉၵေႃႈ လႆႈယူႇသေတႃႉ Swift Developer ၵမ်ႈၼမ်ၼႆႉ တေဢမ်ႇၸႂ်ႉတိုဝ်းၵၼ်ၶႃႈ။
ၵူၺ်းၵႃႈလူဝ်ႇလႆႈမီး `{}` တႃႇၵုမ်း Code ႁဝ်းၵူႈပွၵ်ႈၶႃႈ။

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
ႁဝ်းၸၢင်ႈဢဝ် `&&` (AND), `||` (OR), လႄႈ `!` (NOT) မႃးၸႂ်ႉႁူမ်ႈၵၼ် တွၼ်ႈတႃႇထတ်းသိၼ် လွင်ႈဢၼ်ယၢပ်ႇလိူဝ်ၵဝ်ႇ။

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
ပေႃးႁဝ်းလူဝ်ႇထတ်းသိၼ်ငၢႆႈငၢႆႈ ၼႂ်းထႅဝ်လဵဝ် (One-liner) ႁဝ်းၸႂ်ႉ `condition ? valueIfTrue : valueIfFalse` လႆႈၶႃႈ။

```swift
let score = 85
let result = score >= 50 ? "Pass" : "Fail"
print(result) // Output: "Pass"
```

---