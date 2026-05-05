## Lesson 47: Methods: Adding Logic and Behavior to your Types

**Methods** ၵေႃႈပဵၼ် Function ၼင်ႇၵဝ်ႇ၊ ၵူၺ်းၵႃႈမၼ်းပဵၼ် Function ဢၼ် "ယူႇဝႆႉၼႂ်း" Struct ဢမ်ႇၼၼ် Class ယဝ်ႉ။ မၼ်းမီးၼႃႈတီႈႁဵတ်းၵၢၼ်ၸွမ်းၶေႃႈมูล ဢၼ်မီးယူႇၼႂ်း Object ၼၼ်ႉၶႃႈ။

### 1. Instance Methods
ၼႆႉပဵၼ် Method ဢၼ်ႁဝ်းႁွင်ႉၸႂ်ႉလႆႈ မိူဝ်ႈႁဝ်းသၢင်ႈ Object (Instance) ဢွၵ်ႇမႃးယဝ်ႉၵူၺ်း။

```swift
struct ShanKeyboard {
    var language = "Shan"
    
    func describe() {
        print("This keyboard is using \(language) language.")
    }
}

let myKeyboard = ShanKeyboard()
myKeyboard.describe() // Output: This keyboard is using Shan language.
```

---

### 2. Mutating Methods (တွၼ်ႈတႃႇ Struct ၵူၺ်း)
ၼႂ်း Struct, ပေႃးႁဝ်းၶႂ်ႈတႅမ်ႈ Method ဢၼ် "လႅၵ်ႈလၢႆႈ" (Change) ၵႃႈၶၼ် Property ၽၢႆႇၼႂ်းမၼ်း၊ ႁဝ်းတေလႆႈသႂ်ႇ Keyword **`mutating`** ဝႆႉၽၢႆႇၼႃႈ `func` သေႇသေႇၶႃႈ။ (တွၼ်ႈတႃႇ Class တႄႉ ဢမ်ႇလူဝ်ႇၸႂ်ႉၶႃႈ)။

```swift
struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1 // သင်ဢမ်ႇသႂ်ႇ mutating မၼ်းတေ Error ၶႃႈ
    }
}
```

---

### 3. Type Methods (`static`)
ၵမ်းမၢင် ႁဝ်းၶႂ်ႈမီး Method ဢၼ်ပဵၼ်ၶေႃ "Type" တင်းဢၼ်၊ ဢမ်ႇၸႂ်ႈၶေႃ Object တူဝ်လႂ်တူဝ်ၼိုင်ႈ။ ႁဝ်းတေၸႂ်ႉ Keyword **`static`** ၶႃႈ။

```swift
struct KeyboardInfo {
    static func version() {
        print("TMK Keyboard Version 1.0")
    }
}

KeyboardInfo.version() // ႁွင်ႉၸႂ်ႉတီႈ Type မၼ်းၵမ်းသိုဝ်ႈ
```

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸၢႆးမၢဝ်းၸၢင်ႈတႅမ်ႈ Method ၸိူင်ႉၼင်ႇ `mutating func switchLanguage(to newLang: String)` ဝႆႉၼႂ်း Struct Keyboard။ မၼ်းတေၸွႆးႁႂ်ႈ Code ၸၢႆးမၢဝ်း ပဵၼ်ပၵ်းပဝ်း (Organized) လႄႈ ငၢႆႈတွၼ်ႈတႃႇႁွင်ႉၸႂ်ႉတီႈၼႃႈတႃ UI ယဝ်ႉၶႃႈ။"**

---