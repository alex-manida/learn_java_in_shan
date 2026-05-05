## Lesson 51: Protocol Extensions: Providing Default Implementations

ၼႂ်း Lesson 49 ႁဝ်းႁဵၼ်းဝႃႈ Protocol ၵူၺ်းမၵ်းမၼ်ႈ "Blueprint" သေ ဢမ်ႇမီး Code ႁဵတ်းၵၢၼ်ၽၢႆႇၼႂ်း။ ၵူၺ်းၵႃႈ လူၺ်ႈၵၢၼ်ၸႂ်ႉ **Protocol Extension**၊ ႁဝ်းၸၢင်ႈတႅမ်ႈ Code **"Default Implementation"** (လၢႆးႁဵတ်းၵၢၼ်ပိုၼ်ႉထၢၼ်) ဝႆႉပၼ်လႆႈၶႃႈ။

မၼ်းမၢႆထိုင်ဝႃႈ: သင် Type လႂ်ႁဵတ်းၸွမ်း Protocol ၼႆႉ၊ မၼ်းတေ **လႆႈၼမ်ႉၵတ်ႉၼၼ်ႉၵႂႃႇၵမ်းလဵဝ်** လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ၼၼ်ႉၶိုၼ်းထႅင်ႈၶႃႈ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
ႁဝ်းတႅမ်ႈ `extension` ပၼ် Protocol ၼၼ်ႉၵမ်းသိုဝ်ႈယဝ်ႉၶႃႈ။

```swift
protocol Identifiable {
    var id: String { get }
    func identify()
}

// သႂ်ႇ Default Implementation
extension Identifiable {
    func identify() {
        print("My ID is: \(id)")
    }
}

struct User: Identifiable {
    var id: String
    // ဢမ်ႇလူဝ်ႇတႅမ်ႈ func identify() ယဝ်ႉ ၵွပ်ႈမၼ်းမီးဝႆႉၼႂ်း Extension ယဝ်ႉ
}

let shanUser = User(id: "SaiMao_01")
shanUser.identify() // Output: My ID is: SaiMao_01
```



---

### 2. ၵၢၼ် Overriding Default Logic
သင်ဝႃႈ Type တူဝ်လႂ်တူဝ်ၼိုင်ႈ ၶႂ်ႈမီးလၢႆးႁဵတ်းၵၢၼ်ဢၼ်ပႅၵ်ႇပႅင်ႇ (Custom logic)၊ မၼ်းယင်းၸၢင်ႈတႅမ်ႈ Method ၼၼ်ႉၶိုၼ်းၼႂ်းတူဝ်မၼ်း (Override) လႆႈယူႇၶႃႈ။

```swift
struct Admin: Identifiable {
    var id: String
    
    // တႅမ်ႈမႂ်ႇ တွၼ်ႈတႃႇ Admin ၵူၺ်း
    func identify() {
        print("[ADMIN] Identity: \(id)")
    }
}
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Protocol Extension?
1.  **Reduce Duplication:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code လဵဝ်ၵၼ် ဝႆႉၼႂ်း Struct/Class လၢႆလၢႆတူဝ်။
2.  **Protocol-Oriented Programming (POP):** ၼႆႉပဵၼ်ပၢႆးဝူၼ်ႉလူင်ၶေႃ Swift ဢၼ်ႁဝ်းသၢင်ႈၼမ်ႉၵတ်ႉ (Behaviors) ဝႆႉၼႂ်း Protocol သေ ဢဝ်ၵႂႃႇ "ၸႅၵ်ႇ" ပၼ် Type တၢင်ႇၸိူဝ်း။
3.  **Optional Requirements:** ႁဵတ်းႁႂ်ႈ Method ၼႂ်း Protocol ပဵၼ် "ဢၼ်တေတႅမ်ႈၵေႃႈလႆႈ ဢမ်ႇတႅမ်ႈၵေႃႈလႆႈ" (Optional) ၵွပ်ႈမၼ်းမီး Default ဝႆႉယဝ်ႉ။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸၢႆးမၢဝ်းၸၢင်ႈသၢင်ႈ Protocol `Tappable` ပၼ် Key ၵူႈမဵဝ်း။ ယဝ်ႉတႅမ်ႈ Protocol Extension တွၼ်ႈတႃႇႁဵတ်း 'Haptic Feedback' (လွင်ႈသၼ်ႇ) မိူဝ်ႈၼိပ်ႉ။ ပေႃးႁဵတ်းၼႆယဝ်ႉ Key ၵူႈတူဝ် ဢၼ်ပဵၼ် `Tappable` တေမီးလွင်ႈသၼ်ႇၵမ်းလဵဝ် လူၺ်ႈၸၢႆးမၢဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇတႅမ်ႈ Code တီႈ Key ၵူႈတူဝ်ယဝ်ႉၶႃႈ။"**

---