## Lesson 42: Classes: Understanding Reference Types and Inheritance

**Class** မီးၼႃႈတႃမိူၼ် Struct (မီး Property လႄႈ Method မိူၼ်ၵၼ်) ယဝ်ႉ။
ၵူၺ်းၵႃႈ လၢႆးႁဵတ်းၵၢၼ်ၽၢႆႇတႂ်ႈမၼ်း ပႅၵ်ႇၵၼ်ယူႇ 2 လွင်ႈၶႃႈ။

### 1. Reference Types (ၵၢၼ်ၸႂ်ႉ "ႁွႆးတၢင်း" လဵဝ်ၵၼ်)
Classes ပဵၼ် **Reference Type**။ မၢႆထိုင်ဝႃႈ ပေႃးႁဝ်းသူင်ႇ Class ၵႂႃႇၼႂ်း Variable မႂ်ႇ၊ မၼ်းတေ **ဢမ်ႇ Copy** ဢဝ် ၵႃႊၶၼ်တေႉမၼ်း။ 
မၼ်းၵူၺ်းပဵၼ်ၵၢၼ်သူင်ႇ "သဵၼ်ႈတၢင်း" (Address/Pointer) ၵႂႃႇၸီႉၸူး Object တူဝ်လဵဝ်ၵၼ် ဢၼ်ယူႇၼႂ်း Memory ၼၼ်ႉယဝ်ႉ။

*   သင်ႁဝ်းလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းတီႈ Variable တူဝ်မႂ်ႇၼႆ တူဝ်ၵဝ်ႇၵေႃႈတေ **လႅၵ်ႈလၢႆႈၸွမ်း** ၵမ်းလဵဝ်ယဝ်ႉ။

```swift
class KeyboardManager {
    var language = "Shan"
}

let manager1 = KeyboardManager()
let manager2 = manager1 // ၸီႉၸူး Object တူဝ်လဵဝ်ၵၼ်

manager2.language = "Thai"

print(manager1.language) // Output: Thai (လႅၵ်ႈၸွမ်းယဝ်ႉ!)
```

### 2. Inheritance (ၵၢၼ်သိုပ်ႇပုတ်ႈၼမ်ႉၵတ်ႉ)
Class ၸၢင်ႈသိုပ်ႇပုတ်ႈ (Inherit) ၼမ်ႉၵတ်ႉတီႈ Class တၢင်ႇဢၼ်လႆႈ (Struct ႁဵတ်းဢမ်ႇလႆႈၶႃႈ) ယဝ်ႉ။
*   **Superclass:** Class တူဝ်ပီႈ/တူဝ်မႄႈ။
*   **Subclass:** Class တူဝ်ၼွင်ႉ/တူဝ်လုၵ်ႈ ဢၼ်ပုတ်ႈဢဝ် Property လႄႈ Method မႃးၸႂ်ႉ။

```swift
class Device {
    var brand = "Apple"
}

class iPhone: Device { // iPhone သိုပ်ႇပုတ်ႈမႃးၼႂ်း Device
    var model = "15 Pro"
}

let myPhone = iPhone()
print(myPhone.brand) // Output: Apple (မႃးၸွမ်း Inheritance)
```

---

### ### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Class?
1.  **Shared State:** မိူဝ်ႈႁဝ်းလူဝ်ႇႁႂ်ႈ Code လၢႆလၢႆတီႈ ၸႂ်ႉၶေႃႈမုၼ်းတူဝ်လဵဝ်ၵၼ် (မိူၼ်ၼင်ႇ Keyboard Manager တူဝ်လဵဝ် ဢၼ်ၵုမ်းထိင်းတင်း App)။
2.  **Inheritance:** မိူဝ်ႈလူဝ်ႇသၢင်ႈပိူင် Code ဢၼ်မီးၸၼ်ႉထၢပ်ႈ (Hierarchy)။
3.  **Deinitializers:** Class ၸၢင်ႈမီး `deinit` တွၼ်ႈတႃႇႁဵတ်းၵၢၼ် မိူဝ်ႈ Object တၢႆ (Struct ဢမ်ႇမီးၶႃႈ)။

---