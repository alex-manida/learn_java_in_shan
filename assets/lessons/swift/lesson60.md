## Lesson 60: Error Handling (Part 2): Using try? and try! for Cleaner Code

ၵမ်းမၢင် ႁဝ်းဢမ်ႇလူဝ်ႇၵၢၼ်ၸတ်းၵၢၼ် Error ဢၼ်ယႂ်ႇၼမ်မိူၼ် `do-catch`။ ႁဝ်းၵူၺ်းၶႂ်ႈႁူႉဝႃႈ "မၼ်းႁဵတ်းၵၢၼ်လႆႈႁႃႉ ဢမ်ႇလႆႈ?"။ Swift ၸင်ႇမီး **`try?`** လႄႈ **`try!`** ၸွႆးႁဝ်းၶႃႈ။

### 1. ၵၢၼ်ၸႂ်ႉ `try?` (Error to Optional)
`try?` တေလႅၵ်ႈလၢႆႈၵႃႈၶၼ် ဢၼ်သူင်ႇဢွၵ်ႇမႃးၼႂ်း Function ႁႂ်ႈပဵၼ် **Optional** ၶႃႈ။
*   သင်ႁဵတ်းၵၢၼ်လႆႈ -> မၼ်းတေသူင်ႇၵႃႈၶၼ်ဢွၵ်ႇမႃး (Wrapped in Optional)။
*   သင်မီး Error -> မၼ်းတေသူင်ႇ **`nil`** ဢွၵ်ႇမႃး (လူၺ်ႈဢမ်ႇလူဝ်ႇၸႂ်ႉ `catch`)။

```swift
func fetchThemeName() throws -> String {
    // ... Logic ...
    return "Dark Mode"
}

// ၸႂ်ႉ try? တွၼ်ႈတႃႇဢဝ်ၵႃႈၶၼ်
let theme = try? fetchThemeName() 

if let actualTheme = theme {
    print("Theme name is \(actualTheme)")
} else {
    print("Failed to fetch theme.")
}
```

### 2. ၵၢၼ်ၸႂ်ႉ `try!` (Forced Try)
`try!` မၢႆထိုင်ဝႃႈ ႁဝ်းမၼ်ႈၸႂ် 100% ဝႃႈမၼ်းတေဢမ်ႇမီး Error သေပွၵ်ႈ။
*   သင်မီး Error -> App တေ **Crash** ၵမ်းလဵဝ်ၶႃႈ။
*   ႁဝ်းၸႂ်ႉမၼ်းမိူဝ်ႈႁဝ်း Load File ဢၼ်မီးယူႇၼႂ်း App Bundle ႁဝ်းယူႇယဝ်ႉ လႄႈ ႁဝ်းမၼ်ႈၸႂ်ဝႃႈမၼ်းဢမ်ႇႁၢႆလႆႈၼၼ်ႉယဝ်ႉ။

```swift
// ၸႂ်ႉၵေႃႈတေႃႇမိူဝ်ႈမၼ်ႈၸႂ်တႄႇတႄႉၵူၺ်း
let icon = try! fetchThemeName() 
```

---

### 3. တူဝ်ယၢင်ႇၵၢၼ်ၼိူင်းၵၼ် (Comparison)

| Method | လွင်ႈလွတ်ႈၽေး (Safety) | လွင်ႈပွတ်း (Brevity) | ၵၢၼ်ၸႂ်ႉတိုဝ်း |
| :--- | :--- | :--- | :--- |
| **do-catch** | High | Low | မိူဝ်ႈလူဝ်ႇႁူႉဝႃႈ Error ပဵၼ်သင်တႄႇတႄႉ |
| **try?** | Medium | High | မိူဝ်ႈႁဝ်းၵူၺ်းၶႂ်ႈလႆႈၵႃႈၶၼ် ဢမ်ႇၼၼ် nil |
| **try!** | Low (Dangerous) | High | မိူဝ်ႈမၼ်ႈၸႂ်ဝႃႈ ဢမ်ႇၸၢင်ႈမီး Error |

---