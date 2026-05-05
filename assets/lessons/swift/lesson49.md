## Lesson 49: Protocols: Defining Blueprints for Methods and Properties

**Protocol** ပဵၼ် "ၵႅၼ်ႇလိၵ်ႈ" ဢမ်ႇၼၼ် "ၶေႃႈတူၵ်းလူင်း" (Contract/Blueprint) ဢၼ်မၵ်းမၼ်ႈဝႃႈ: *"သင်ဝႃႈ Type လႂ် (Struct ဢမ်ႇၼၼ် Class) ၶႂ်ႈႁဵတ်းၸွမ်းၵဝ်ၼႆ၊ မၼ်းတေလႆႈမီး Property လႄႈ Method ၸိူဝ်းၼႆႉၼႃ"*။ ၵူၺ်းၵႃႈ Protocol **ဢမ်ႇတႅမ်ႈ Code ၽၢႆႇၼႂ်း** မၼ်းၶႃႈ၊ မၼ်းၵူၺ်းမၵ်းမၼ်ႈ "ၸိုဝ်ႈ" လႄႈ "ပိူင်" မၼ်းဝႆႉၵူၺ်း။

### 1. Syntax ၵၢၼ်သၢင်ႈ Protocol
ႁဝ်းၸႂ်ႉ Keyword `protocol` သေ မၵ်းမၼ်ႈ Property (လူဝ်ႇမၵ်းမၼ်ႈဝႃႈ { get } ဢမ်ႇၼၼ် { get set }) လႄႈ Method ဢၼ်လူဝ်ႇမီးၶႃႈ။

```swift
protocol KeyAction {
    var keyLabel: String { get } // တေလႆႈမီး Property ၼႆႉ (ဢၢၼ်ႇလႆႈ)
    func playSound()             // တေလႆႈမီး Method ၼႆႉ
}
```



---

### 2. Protocol Conformance (ၵၢၼ်ႁဵတ်းၸွမ်း)
မိူဝ်ႈႁဝ်းသၢင်ႈ Struct ဢမ်ႇၼၼ် Class၊ ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈမၼ်း "Conformance" (ႁဵတ်းၸွမ်း) Protocol ၼၼ်ႉလႆႈၶႃႈ။

```swift
struct NormalKey: KeyAction {
    var keyLabel: String
    
    func playSound() {
        print("Playing 'click' sound.")
    }
}

struct FunctionKey: KeyAction {
    var keyLabel: String
    
    func playSound() {
        print("Playing 'thump' sound.")
    }
}
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Protocol?
1.  **Polymorphism:** ႁဝ်းၸၢင်ႈၵဵပ်း Object ဢၼ်ပႅၵ်ႇၵၼ် (မိူၼ်ၼင်ႇ NormalKey လႄႈ FunctionKey) ဝႆႉၼႂ်း Array တူဝ်လဵဝ်ၵၼ်လႆႈ သင်ဝႃႈမၼ်းႁဵတ်းၸွမ်း Protocol `KeyAction` မိူၼ်ၵၼ်။
2.  **Decoupling:** ႁဵတ်းႁႂ်ႈ Code ႁဝ်းဢမ်ႇလူဝ်ႇႁူႉဝႃႈ Object ၼၼ်ႉပဵၼ် Type သင်တႄႇတႄႉ၊ ႁူႉၵူၺ်းဝႃႈမၼ်း "ႁဵတ်းၵၢၼ်သင်လႆႈ" ၵေႃႈယဝ်ႉယဝ်ႉ။
3.  **Standardization:** ႁဵတ်းႁႂ်ႈ Code မီးပၵ်းပဝ်း ၵွပ်ႈၵူႈတူဝ်လူဝ်ႇလႆႈမီး Method ၸိုဝ်ႈလဵဝ်ၵၼ်။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸၢႆးမၢဝ်းၸၢင်ႈသၢင်ႈ Protocol ၸိူင်ႉၼင်ႇ `KeyboardKey` ဢၼ်မၵ်းမၼ်ႈဝႃႈ တူဝ်ၼိပ်ႉၵူႈတူဝ်လူဝ်ႇမီး `func handleTap()`။ ဢမ်ႇဝႃႈမၼ်းတေပဵၼ် တူဝ်လိၵ်ႈ၊ တူဝ်ၼပ်ႉ၊ ဢမ်ႇၼၼ် Emoji Key ၵေႃႈယႃႇ၊ ပေႃးမၼ်းႁဵတ်းၸွမ်း Protocol ၼႆႉယဝ်ႉ၊ ၸၢႆးမၢဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ Keyboard Engine ႁဵတ်းၵၢၼ်ၸွမ်းမၼ်းလႆႈငၢႆႈငၢႆႈ ၵူႈတူဝ်ယဝ်ႉၶႃႈ။"**

---