## Lesson 52: Delegation Pattern: How Objects Communicate Safely

**Delegation** မၢႆထိုင် "ၵၢၼ်မွပ်ႈဢၢပ်ႈၼႃႈတီႈ" ၼႆယဝ်ႉ။ မၼ်းပဵၼ် Design Pattern ဢၼ်ပၼ်ႁႂ်ႈ Object တူဝ်ၼိုင်ႈ (The Boss) 
သူင်ႇၵၢၼ် ဢမ်ႇၼၼ် သူင်ႇၶေႃႈမုၼ်း ၵႂႃႇပၼ် Object ထႅင်ႈတူဝ်ၼိုင်ႈ (The Helper) တႃႇႁႂ်ႈမၼ်း ႁဵတ်းပၼ်ၼႆယဝ်ႉ။



### 1. လၢႆးႁဵတ်းၵၢၼ် (How it works)
ႁဝ်းၸႂ်ႉ **Protocol** ပဵၼ်တူဝ်ၵၢင် တွၼ်ႈတႃႇမၵ်းမၼ်ႈဝႃႈ "Helper တေလႆႈႁဵတ်းသင်ပၼ်လၢႆလၢႆ" ၼႆယဝ်ႉ။

1.  **Protocol:** မၵ်းမၼ်ႈၼႃႈတီႈ။
2.  **Delegating Object (The Boss):** မီး Variable ဢၼ်ၵဵပ်း `delegate` ဝႆႉ။
3.  **Delegate Object (The Helper):** ႁဵတ်းၸွမ်း Protocol သေ ႁဵတ်းၵၢၼ်တူဝ်တေႉ။

### 2. တူဝ်ယၢင်ႇ (Real-world Example)
ဝူၼ်ႉတူၺ်း Keyboard ႁဝ်းဝႃႈ မိူဝ်ႈ User ၼဵၵ်း Key ၼၼ်ႉ Keyboard တေလႆႈလၢတ်ႈၼႄ App ဝႃႈ "User ၼိဵၵ်းယဝ်ႉၼႃ" ၼႆယဝ်ႉ။

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
1.  **Loose Coupling:** Object တူဝ်ၼိုင်ႈ ဢမ်ႇလူဝ်ႇႁူႉလွင်ႈ Object ထႅင်ႈတူဝ်ၼိုင်ႈလႄႈ လူဝ်ႇႁူႉၵူၺ်းဝႃႈ မၼ်းႁဵတ်းၸွမ်း Protocol ၵေႃႈယဝ်ႉယဝ်ႉ။
2.  **Flexibility:** ႁဝ်းၸၢင်ႈလႅၵ်ႈလၢႆႈ "Helper" (Delegate) လႆႈၵူႈၶၢဝ်း လူၺ်ႈဢမ်ႇလူဝ်ႇမႄး Code ၼႂ်း "Boss" (Engine) ယဝ်ႉ။
3.  **Safety:** ၸွႆးႁႂ်ႈၵၢၼ်သူင်ႇၶေႃႈမုၼ်း မႅၼ်ႈၸွမ်းပိူင် လႄႈ ၵူတ်ႇထတ်း Error လႆႈငၢႆႈယဝ်ႉ။

---