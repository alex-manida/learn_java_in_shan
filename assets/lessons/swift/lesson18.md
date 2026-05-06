## Lesson 18: The guard Statement: Mastering the 'Early Exit' for Cleaner Code

**`guard`** ၼႆႉ မိူၼ်ၵၼ်တင်း `if` ၵူၺ်းၵႃႈ မၼ်းမီးပၢႆးဝူၼ်ႉဢၼ်ပိၼ်ႈၵၼ်ၶႃႈ။
`if` ၼႆႉ မၼ်းတေတူၺ်းဝႃႈ "သင်ဝႃႈမၢၼ်ႇမႅၼ်ႈ ၸင်ႇႁဵတ်း"၊ ၵူၺ်းၵႃႈ `guard` တေတူၺ်းဝႃႈ **"သင်ဝႃႈဢမ်ႇမၢၼ်ႇမႅၼ်ႈ ႁႂ်ႈဢွၵ်ႇ (Exit) ၵႂႃႇၵမ်းလဵဝ်"** ယဝ်ႉ။
ႁဝ်းႁွင်ႉလၢႆးၼႆႉဝႃႈ **Early Exit** (ၵၢၼ်ဢွၵ်ႇဢွၼ်တၢင်း) ၼႆယဝ်ႉ။

### 1. Syntax ၶေႃ `guard`
`guard` လူဝ်ႇမီး `else` ၸွမ်းၵူႈပွၵ်ႈလႄႈ ၼႂ်း `else` ၼၼ်ႉ လူဝ်ႇမီးၶေႃႈၵႂၢမ်းသင်ႇႁႂ်ႈ "ဢွၵ်ႇ" (မိူၼ်ၼင်ႇ `return`, `break`, `continue`, ဢမ်ႇၼၼ် `throw`) ၶႃႈ။

```swift
func checkUsername(name: String) {
    guard name.count > 0 else {
        print("Error: ပဵၼ်ၸိုဝ်ႈပဝ်ႇဝႆႉၶႃႈ!")
        return // ဢွၵ်ႇၼႂ်း Function ၵႂႃႇၵမ်းလဵဝ်
    }
    
    // ပေႃးပူၼ်ႉ guard မႃးယဝ်ႉ မၢႆထိုင်ဝႃႈ name မီးတူဝ်လိၵ်ႈတႄႉတႄႉယဝ်ႉ
    print("Welcome, \(name)!")
}
```

---

### 2. ၵွပ်ႈသင် `guard` သမ်ႉလီလိူဝ် `if`?
မိူဝ်ႈႁဝ်းမီးသၢႆငၢႆ (Conditions) ၼမ်ၼႃႇ၊ ပေႃးႁဝ်းၸႂ်ႉ `if` Code ႁဝ်းတေပဵၼ်ၸၼ်ႉပဵၼ်ၸၼ်ႉ (Nested) ၶဝ်ႈၵႂႃႇၽၢႆႇၼႂ်းတိၵ်းတိၵ်း ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ "Pyramid of Doom" ၼၼ်ႉယဝ်ႉ။ 
`guard` တေၸွႆးႁႂ်ႈ Code ႁဝ်း တႅမ်ႈပဵၼ်သဵၼ်ႈသိုဝ်ႈလူင်းမႃးလႆႈၶႃႈ။



---

### 3. guard let (ၵၢၼ်ၸႅၵ်ႇ Optional)
ဢၼ်ၼႆႉပဵၼ်ဢၼ်ၶိုၵ်ႉတွၼ်းပိူၼ်ႈၶႃႈ။ ပေႃးႁဝ်းၸႂ်ႉ `guard let` တွၼ်ႈတႃႇဢဝ်ၶေႃႈမုၼ်း ဢွၵ်ႇၼႂ်း Optional ၼႆ
Variable ၼၼ်ႉ တေၸၢင်ႈၸႂ်ႉလႆႈ **"တင်းသဵင်ႈ"** ၼႂ်း Scope ၽၢႆႇတႂ်ႈ `guard` ၼၼ်ႉယဝ်ႉ (ပေႃးပဵၼ် `if let` မၼ်းတေၸႂ်ႉလႆႈၼႂ်း `{}` ၵူၺ်း)။

```swift
func processLayout(id: Int?) {
    guard let layoutID = id else {
        print("ဢမ်ႇမီး ID ၶႃႈ")
        return
    }
    
    // ၸႂ်ႉ layoutID လႆႈၵမ်းသိုဝ်ႈတီႈၼႆႉ
    print("Processing layout number \(layoutID)")
}
```

---