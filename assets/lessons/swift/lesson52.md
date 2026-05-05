## Lesson 52: Delegation Pattern: How Objects Communicate Safely

**Delegation** မၢႆထိုင် "ၵၢၼ်မွပ်ႈဢၢပ်ႈၼႃႈတီႈ"။ မၼ်းပဵၼ် Design Pattern ဢၼ်ပၼ်လုၵ်ႉပၼ် Object တူဝ်ၼိုင်ႈ (The Boss) သူင်ႇၵၢၼ် ဢမ်ႇၼၼ် သူင်ႇၶေႃႈมูล ၵႂႃႇႁႂ်ႈထႅင်ႈ Object တူဝ်ၼိုင်ႈ (The Helper) ႁဵတ်းပၼ်ၶႃႈ။



### 1. လၢႆးႁဵတ်းၵၢၼ် (How it works)
ႁဝ်းၸႂ်ႉ **Protocol** ပဵၼ်တူဝ်ၵၢင် တွၼ်ႈတႃႇမၵ်းမၼ်ႈဝႃႈ "Helper တေလႆႈႁဵတ်းသင်ပၼ်လႆႈလၢႆလၢႆ"။

1.  **Protocol:** မၵ်းမၼ်ႈၼႃႈတီႈ။
2.  **Delegating Object (The Boss):** မီး Variable ဢၼ်ၵဵပ်း `delegate` ဝႆႉ။
3.  **Delegate Object (The Helper):** ႁဵတ်းၸွမ်း Protocol သေ ႁဵတ်းၵၢၼ်တႄႇတႄႉ။

### 2. တူဝ်ယၢင်ႇ (Real-world Example)
ဝူၼ်ႉတူၺ်း Keyboard ႁဝ်း၊ မိူဝ်ႈ User ၼိပ်ႉ Key၊ Keyboard တေလႆႈလၢတ်ႈၼႄ App ဝႃႈ "User ၼိပ်ႉယဝ်ႉၼႃ"။

```swift
// 1. မၵ်းမၼ်ႈ Protocol
protocol KeyboardDelegate: AnyObject {
    func didTapKey(character: String)
}

// 2. The Boss (Keyboard Engine)
class KeyboardEngine {
    // ၸႂ်ႉ weak တွၼ်ႈတႃႇႁႄႉၵင်ႈ Memory Leak
    weak var delegate: KeyboardDelegate? 
    
    func keyTapped(char: String) {
        // သူင်ႇၵၢၼ်ၵႂႃႇၸူး Helper
        delegate?.didTapKey(character: char)
    }
}

// 3. The Helper (App Controller)
class AppViewController: KeyboardDelegate {
    func didTapKey(character: String) {
        print("App received: \(character)")
    }
}
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Delegation?
1.  **Loose Coupling:** Object တူဝ်ၼိုင်ႈ ဢမ်ႇလူဝ်ႇႁူႉလွင်ႈတူဝ်ၼိုင်ႈၼမ်ပိုၼ်းၵႂႃႇ။ ႁူႉၵူၺ်းဝႃႈမၼ်းႁဵတ်းၸွမ်း Protocol ၵေႃႈယဝ်ႉယဝ်ႉ။
2.  **Flexibility:** ႁဝ်းၸၢင်ႈလႅၵ်ႈလၢႆႈ "Helper" (Delegate) လႆႈၵူႈၶၢဝ်း လူၺ်ႈဢမ်ႇလူဝ်ႇမႄး Code ၼႂ်း "Boss" (Engine)။
3.  **Safety:** ၸွႆးႁႂ်ႈၵၢၼ်သူင်ႇၶေႃႈมูล ပဵၼ်ပၵ်းပဝ်း လႄႈ ၵူတ်ႇထတ်း Error လႆႈငၢႆႈ။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: Delegation ပဵၼ်လၢႆးဢၼ်လီသုတ်း တွၼ်ႈတႃႇႁႂ်ႈ 'Keyboard View' (ဢၼ် User ႁၼ်) သူင်ႇၶေႃႈมูลၵႂႃႇၸူး 'Input Controller' (ဢၼ်သူင်ႇလိၵ်ႈၶဝ်ႈ App)။ ၸၢႆးမၢဝ်းတေလႆႈၸႂ်ႉလၢႆးၼႆႉ ၼႂ်းၵၢၼ်တႅမ်ႈ iOS Keyboard Extension တႄႇတႄႉၶႃႈယဝ်ႉ။"**

---