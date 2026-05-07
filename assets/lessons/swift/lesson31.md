## Lesson 31: Trailing Closure Syntax: The Foundation of SwiftUI Layouts

ၼႂ်း Lesson ဢၼ်ပူၼ်ႉမႃး ႁဝ်းႁူႉဝႃႈ **Trailing Closure** ၸွႆးႁႂ်ႈ Code ႁဝ်းလူငၢႆႈယဝ်ႉ။
ၵူၺ်းၵႃႈၼႂ်း **SwiftUI** (Framework ဢၼ်ၸႂ်ႉသၢင်ႈ UI) ၼၼ်ႉ Trailing Closure ဢမ်ႇၸႂ်ႈတႃႇ "လၢႆးတႅမ်ႈဢၼ်ပွတ်း" ၵူၺ်း
မၼ်းပဵၼ် "ပိုၼ်ႉထၢၼ်" ဢၼ်ၸႂ်ႉသၢင်ႈ Layout တင်းဢၼ်ယဝ်ႉ။

### 1. SwiftUI Structure
မိူဝ်ႈႁဝ်းသၢင်ႈ Container မိူၼ်ၼင်ႇ `VStack` (ၸတ်းတူဝ်လိၵ်ႈႁႂ်ႈလူင်းၸွမ်းထႅဝ်သိုဝ်ႈ) ဢမ်ႇၼၼ် `Button` ၼၼ်ႉ 
SwiftUI ၸႂ်ႉ Trailing Closure တွၼ်ႈတႃႇမၵ်းမၼ်ႈ "ၶေႃႈမုၼ်းၽၢႆႇၼႂ်း" မၼ်းယဝ်ႉ။

```swift
// တူဝ်ယၢင်ႇ Button ၼႂ်း SwiftUI
Button(action: {
    print("Key Pressed!")
}) {
    Text("ၵ") // ဢၼ်ၼႆႉပဵၼ် Trailing Closure တွၼ်ႈတႃႇၼႄ UI
}
```

---

### 2. Multiple Trailing Closures
ၼႂ်း Swift Version မႂ်ႇမႂ်ႇ (5.3 ၶိုၼ်းၼိူဝ်) ၼၼ်ႉ သင်ဝႃႈ Function ၼိုင်ႈဢၼ်မီး Closure လၢႆဢၼ်ယူႇၽၢႆႇလင် ႁဝ်းၸၢင်ႈၸႂ်ႉ Trailing Closure သိုပ်ႇၵၼ်လႆႈယဝ်ႉ။

```swift
func setupKey(onPress: () -> Void, onLongPress: () -> Void) {
    onPress()
    onLongPress()
}

// ၵၢၼ်ၸႂ်ႉ Trailing Closures လၢႆဢၼ်
setupKey {
    print("Normal Press")
} onLongPress: {
    print("Long Press for Sub-keys")
}
```

---

### 3. ၵွပ်ႈသင်လၢႆးတႅမ်ႈၼႆႉသမ်ႉလွင်ႈယႂ်ႇ?
*   **DSL (Domain Specific Language):** မၼ်းႁဵတ်းႁႂ်ႈ Code ၵၢၼ်သၢင်ႈ UI ႁဝ်း လူငၢႆႈမိူၼ်လိၵ်ႈဢင်းၵိတ်းယဝ်ႉ။
*   **Clean Nesting:** ၸွႆးႁႂ်ႈႁဝ်းသႂ်ႇ View ၼိုင်ႈဢၼ် ဝႆႉၼႂ်း View ထႅင်ႈၼိုင်ႈဢၼ် (မိူၼ်ၼင်ႇဢဝ် Button သႂ်ႇၼႂ်း VStack) လႆႈသႅၼ်ႈသႂ်လိူဝ်ၵဝ်ႇယဝ်ႉ။



---