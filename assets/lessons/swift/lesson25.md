## Lesson 25: Function Anatomy: Parameters, Return Types, and Argument Labels

**Function** ပဵၼ်ၵၢၼ်ဢဝ် Code ႁဝ်းမႃးၵူပ်ႉၵၼ်ဝႆႉၼႂ်း 
"ၸုမ်း" ဢၼ်မီးၸိုဝ်ႈ (Named block) သေ 
ႁဝ်းၸၢင်ႈႁွင်ႉၸႂ်ႉမၼ်းလႆႈ ၵူႈတီႈ ၵူႈၶၢဝ်းယဝ်ႉ။

### 1. Basic Function (ပိုၼ်ႉထၢၼ်)
ႁဝ်းၸႂ်ႉၶေႃႈၵႂၢမ်း `func` တွၼ်ႈတႃႇတႄႇသၢင်ႈ function ၼိုင်ႈဢၼ်ယဝ်ႉ။

```swift
func playClickSound() {
    print("Sound: Click!")
}

// ၵၢၼ်ႁွင်ႉၸႂ်ႉ (Calling)
playClickSound()
```

---

### 2. Parameters (ၵၢၼ်သူင်ႇၶေႃႈมูลၶဝ်ႈ)
ႁဝ်းၸၢင်ႈသူင်ႇၶေႃႈမုၼ်း ၶဝ်ႈၵႂႃႇၼႂ်း Function တွၼ်ႈတႃႇႁႂ်ႈမၼ်း ႁဵတ်းၵၢၼ်ၸွမ်းယဝ်ႉ။

```swift
func greetUser(name: String) {
    print("Welcome, \(name)!")
}

greetUser(name: "Sai Mao") 
```

---

### 3. Argument Labels (ၵၢၼ်တင်ႈၸိုဝ်ႈၽၢႆႇၼွၵ်ႈ)
ၼႂ်း Swift မီးလွင်ႈၶိုၵ်ႉတွၼ်းပိူင်ၼိုင်ႈ - ႁဝ်းၸၢင်ႈမီးၸိုဝ်ႈ Variable 2 ဢၼ်ယဝ်ႉ:
*   **Argument Label:** ၸိုဝ်ႈဢၼ်ၸႂ်ႉမိူဝ်ႈ "ႁွင်ႉ" (External).
*   **Parameter Name:** ၸိုဝ်ႈဢၼ်ၸႂ်ႉ "ၼႂ်း" Code (Internal).

```swift
func send(message text: String, to recipient: String) {
    // ၼႂ်းၼႆႉၸႂ်ႉ 'text' လႄႈ 'recipient'
    print("Sending '\(text)' to \(recipient)")
}

// မိူဝ်ႈႁွင်ႉၸႂ်ႉ 'message' လႄႈ 'to' (လူငၢႆႈမိူၼ်လိၵ်ႈဢင်းၵိတ်း)
send(message: "Hello", to: "Students")
```

> **သတိ:** သင်ဝႃႈဢမ်ႇၶႂ်ႈသႂ်ႇၸိုဝ်ႈမိူဝ်ႈႁွင်ႉ ႁဝ်းၸၢင်ႈၸႂ်ႉ `_` တႅၼ်း Argument Label လႆႈယဝ်ႉ။

---

### 4. Return Types (ၵၢၼ်သူင်ႇၶေႃႈมูลဢွၵ်ႇ)
ပေႃးႁဝ်းၶႂ်ႈႁႂ်ႈ Function ၼပ်ႉသွၼ်ႇယဝ်ႉသေ သူင်ႇၵႃႈၶၼ်ဢွၵ်ႇမႃး ႁဝ်းၸႂ်ႉမၢႆ `->` ယဝ်ႉ။

```swift
func getLayoutName(id: Int) -> String {
    if id == 1 {
        return "Namkhone"
    }
    return "Standard"
}

let name = getLayoutName(id: 1) // name တေပဵၼ် "Namkhone"
```

---