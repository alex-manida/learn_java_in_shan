## Lesson 61: Typed Throws (Swift 6): Specifying Exactly Which Error Type is Thrown

မိူဝ်ႈၵွၼ်ႇ (Swift 5 လႄႈ တႅမ်ႇလိူဝ်)၊ ၵၢၼ်ၸႂ်ႉ `throws` မၼ်းပဵၼ် "Generic Error"။ မၢႆထိုင်ဝႃႈ ႁဝ်းဢမ်ႇႁူႉလႆႈဝႃႈ မၼ်းတေသူင်ႇ Error မဵဝ်းလႂ်ဢွၵ်ႇမႃးတႄႇတႄႉ တေႃႇပေႃးႁဝ်းၵႂႃႇၵူတ်ႇထတ်းၼႂ်း `catch` block ယဝ်ႉ။

ၼႂ်း **Swift 6**, ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ Function ၼႆႉတေသူင်ႇ **Error Type ဢၼ်ၼႆႉၵူၺ်းၼႃ** ဢွၵ်ႇမႃးၶႃႈ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉ Typed Throws
ႁဝ်းသႂ်ႇၸိုဝ်ႈ Enum Error ႁဝ်းဝႆႉၼႂ်းဝူင်ႇလႅတ်း `throws(...)` ၶႃႈ။

```swift
enum ThemeError: Error {
    case fileNotFound
    case decodingFailed
}

// မၵ်းမၼ်ႈဝႃႈ တေသူင်ႇ ThemeError ၵူၺ်း
func loadTheme() throws(ThemeError) {
    let success = false
    if !success {
        throw .fileNotFound // ဢမ်ႇလူဝ်ႇတႅမ်ႈ ThemeError. ၵေႃႈလႆႈ ၵွပ်ႈ Swift ႁူႉယဝ်ႉ
    }
}
```

### 2. ၽွၼ်းလီ (Benefits)
1.  **Type Safety:** ၼႂ်း `catch` block, Swift တေႁူႉၵမ်းလဵဝ်ဝႃႈ `error` ၼၼ်ႉပဵၼ် Type `ThemeError`၊ ႁဝ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ `as? ThemeError` တွၼ်ႈတႃႇ Casting မၼ်းထႅင်ႈၶႃႈ။
2.  **Exhaustive Catch:** Swift တေၸွႆးၵူတ်ႇထတ်းဝႃႈ ႁဝ်း `catch` ၶေႃႈมูล Error ၵူႈ case ယဝ်ႉႁႃႉ (မိူၼ်ၼင်ႇၵၢၼ်ၸႂ်ႉ switch)။
3.  **Better Documentation:** ၵူၼ်းမႃးဢၢၼ်ႇ Code ႁဝ်း တေႁူႉလႆႈၵမ်းလဵဝ်ဝႃႈ Function ၼႆႉ ၸၢင်ႈမီးပၼ်ႁႃသင်လၢႆလၢႆ။

```swift
do {
    try loadTheme()
} catch {
    // ယၢမ်းလဵဝ် 'error' ပဵၼ် ThemeError ၵမ်းသိုဝ်ႈယဝ်ႉ
    switch error {
    case .fileNotFound: print("File ႁၢႆၶႃႈ")
    case .decodingFailed: print("Code လူႉၶႃႈ")
    }
}
```

---