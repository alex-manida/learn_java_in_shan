## Lesson 51: Protocol Extensions: Providing Default Implementations

ၼႂ်း Lesson 49 ႁဝ်းႁဵၼ်းဝႃႈ Protocol ၵူၺ်းမၵ်းမၼ်ႈ "Blueprint" သေ ဢမ်ႇမီး Code ႁဵတ်းၵၢၼ်ၽၢႆႇၼႂ်း။
ၵူၺ်းၵႃႈ လူၺ်ႈၵၢၼ်ၸႂ်ႉ **Protocol Extension** ၼႆ ႁဝ်းၸၢင်ႈတႅမ်ႈ Code **"Default Implementation"** (လၢႆးႁဵတ်းၵၢၼ်ပိုၼ်ႉထၢၼ်) ဝႆႉပၼ်မၼ်း လႆႈယဝ်ႉ။

မၼ်းမၢႆထိုင်ဝႃႈ: သင် Type လႂ်ႁဵတ်းၸွမ်း Protocol ၼႆႉၼႆ မၼ်းတေ **လႆႈၼမ်ႉၵတ်ႉၼၼ်ႉၵႂႃႇၵမ်းလဵဝ်** လူၺ်ႈဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ၼၼ်ႉၶိုၼ်းထႅင်ႈယဝ်ႉ။

### 1. Syntax ၵၢၼ်ၸႂ်ႉတိုဝ်း
ႁဝ်းတႅမ်ႈ `extension` ပၼ် Protocol ၼင်ႇၼႆယဝ်ႉ။

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
သင်ဝႃႈ Type သေတူဝ်တူဝ် ၶႂ်ႈမီးလၢႆးႁဵတ်းၵၢၼ် ဢၼ်ပႅၵ်ႇတင်း Default မၼ်းၼႆၸိုင် ႁဝ်းၸၢင်ႈတႅမ်ႈ Method ၼၼ်ႉၶိုၼ်းၼႂ်းတူဝ်မၼ်း (Override) ယဝ်ႉ။

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
1.  **Reduce Duplication:** ဢမ်ႇလူဝ်ႇတႅမ်ႈ Code ဢၼ်လဵဝ် ဝႆႉၼႂ်း Struct/Class လၢႆလၢႆတူဝ်။
2.  **Protocol-Oriented Programming (POP):** ၼႆႉပဵၼ်ပၢႆးဝူၼ်ႉလူင်ၶေႃ Swift ဢၼ်ႁဝ်းသၢင်ႈၼမ်ႉၵတ်ႉ (Behaviors) ဝႆႉၼႂ်း Protocol သေ ဢဝ်ၵႂႃႇ "ၸႅၵ်ႇ" ပၼ် Type တၢင်ႇၸိူဝ်းယဝ်ႉ။
3.  **Optional Requirements:** ႁဵတ်းႁႂ်ႈ Method ၼႂ်း Protocol ပဵၼ် "ဢၼ်တေတႅမ်ႈၵေႃႈလႆႈ ဢမ်ႇတႅမ်ႈၵေႃႈလႆႈ" (Optional) ၵွပ်ႈမၼ်းမီး Default ဝႆႉယဝ်ႉ။

---