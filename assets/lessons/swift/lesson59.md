## Lesson 59: Error Handling (Part 1): The do-catch Pattern and throws

ၼႂ်းၵၢၼ်တႅမ်ႈ App, မၼ်းတေမီးလွင်ႈဢၼ်ႁဝ်းၵုမ်းထိင်းဢမ်ႇလႆႈ (မိူၼ်ၼင်ႇ Search ဢမ်ႇႁၼ်ၶေႃႈมูล, Internet လူႉ, ဢမ်ႇၼၼ် File ဢမ်ႇမီး)။ Swift ၸႂ်ႉပိူင် **throws** လႄႈ **do-catch** တွၼ်ႈတႃႇၸတ်းၵၢၼ်လွင်ႈၸိူဝ်းၼႆႉ ဢမ်ႇႁႂ်ႈ App ႁဝ်း Crash ၵႂႃႇၶႃႈ။

### 1. မၵ်းမၼ်ႈ Error Type
ႁဝ်းလူဝ်ႇသၢင်ႈ Enum ဢၼ်ႁဵတ်းၸွမ်း Protocol **`Error`** တွၼ်ႈတႃႇလၢတ်ႈၼႄဝႃႈ မီးပၼ်ႁႃသင်လၢႆလၢႆ။

```swift
enum KeyboardError: Error {
    case languageNotInstalled
    case memoryFull
    case invalidInput(char: String)
}
```

### 2. ၵၢၼ်ၸႂ်ႉ `throws`
သင် Function တူဝ်လႂ်တူဝ်ၼိုင်ႈ ၸၢင်ႈ "ပၼ်ႁႃ" (Throw an error)၊ ႁဝ်းတေလႆႈသႂ်ႇ Keyword **`throws`** ဝႆႉၽၢႆႇလင် Parameter ၶႃႈ။

```swift
func loadShanLanguage() throws {
    let isInstalled = false
    
    if !isInstalled {
        // သူင်ႇ Error ဢွၵ်ႇၵႂႃႇ
        throw KeyboardError.languageNotInstalled
    }
    print("Language loaded successfully!")
}
```

### 3. ၵၢၼ်ၸတ်းၵၢၼ်လူၺ်ႈ `do-catch`
မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ Function ဢၼ် `throws`၊ ႁဝ်းတေလႆႈၸႂ်ႉ **`do-catch`** block သေ သႂ်ႇ Keyword **`try`** ဝႆႉၽၢႆႇၼႃႈ Function ၼၼ်ႉၶႃႈ။

```swift
do {
    try loadShanLanguage()
} catch KeyboardError.languageNotInstalled {
    print("ပၼ်ႁႃ: ၸၢႆးမၢဝ်း လူဝ်ႇလႆႈ Download ၽႃႇသႃႇတႆး ဢွၼ်တၢင်းၶႃႈ။")
} catch {
    print("မီးပၼ်ႁႃဢၼ်ႁဝ်းဢမ်ႇႁူႉ: \(error)")
}
```



---

### 4. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ do-catch?
1.  **Graceful Recovery:** ၸွႆးႁႂ်ႈ App ႁဝ်းသိုပ်ႇႁဵတ်းၵၢၼ်လႆႈ ဢမ်ႇဝႃႈမီးပၼ်ႁႃၵေႃႈယႃႇ (မိူၼ်ၼင်ႇ ၼႄ Dialog လၢတ်ႈၼႄ User တႅၼ်းၵၢၼ် Crash)။
2.  **Explicit Errors:** ႁဵတ်းႁႂ်ႈ Developer ႁူႉလႅင်းဝႃႈ တီႈလႂ်ၸၢင်ႈမီးပၼ်ႁႃ။
3.  **Clean Code:** ၸႅၵ်ႇ Code တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် (Logic) လႄႈ Code တွၼ်ႈတႃႇၵႄႈပၼ်ႁႃ (Error Handling) ဢွၵ်ႇၼႂ်းၵၼ်လႅင်းလႅင်း။

---