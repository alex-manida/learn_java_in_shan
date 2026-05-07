## Lesson 32: Escaping vs. Non-Escaping Closures (Critical for Concurrency)

ၼႂ်း Swift ၼႆႉ Closure မီး 2 မဵဝ်း ၸွမ်းၼင်ႇ "ၸူဝ်ႈပၢၼ်" (Lifecycle) မၼ်းယဝ်ႉ။ 
ဢၼ်ၼႆႉ လွင်ႈယႂ်ႇတႄႉတႄႉ မိူဝ်ႈႁဝ်းလူဝ်ႇသူင်ႇၶေႃႈမုၼ်းၵႂႃႇၼႂ်း Internet ဢမ်ႇၼၼ် ႁဵတ်းၵၢၼ်ဢၼ်ယၢဝ်းယၢဝ်းယဝ်ႉ။

### 1. Non-Escaping Closures (Default)
ပိုၼ်ႉထၢၼ်မၼ်း Closure ၵူႈဢၼ်ပဵၼ် **Non-escaping** ယဝ်ႉ။ မၢႆထိုင်ဝႃႈ:
*   Closure ၼၼ်ႉ တေႁဵတ်းၵၢၼ် "ၼႂ်း" Function ၼၼ်ႉၵူၺ်း။
*   မိူဝ်ႈ Function ၼၼ်ႉႁဵတ်းၵၢၼ်ယဝ်ႉတူဝ်ႈ (Return) ၵႂႃႇၼၼ်ႉ Closure ၵေႃႈတေ "တၢႆ" ၸွမ်းၵႂႃႇၵမ်းလဵဝ်ယဝ်ႉ။
*   မၼ်းဢမ်ႇလူဝ်ႇၸႂ်ႉ Memory ၼမ် ၵွပ်ႈ Swift ႁူႉဝႃႈမၼ်းတေဢမ်ႇယူႇယၢဝ်းယဝ်ႉ။

### 2. Escaping Closures (`@escaping`)
**Escaping Closure** ပဵၼ် Closure ဢၼ် "လွတ်ႈ" (Escape) ဢွၵ်ႇၵႂႃႇၼွၵ်ႈ Function ယဝ်ႉ။ 
မၼ်းတေ **သိုပ်ႇမီးသၢႆၸႂ်ယူႇ** ဢမ်ႇဝႃႈ Function တူဝ်ဢၼ်သၢင်ႈမၼ်းမႃးၼၼ်ႉ တေႁဵတ်းၵၢၼ်ယဝ်ႉၵႂႃႇယဝ်ႉၵေႃႈယႃႇ။

ႁဝ်းလူဝ်ႇၸႂ်ႉ `@escaping` မိူဝ်ႈ:
1.  **Asynchronous Work:** မိူဝ်ႈလူဝ်ႇပႂ်ႉၶေႃႈမုၼ်း (မိူၼ်ၼင်ႇ Download လိၵ်ႈတႆးၼႂ်း Server)။
2.  **Storage:** မိူဝ်ႈႁဝ်းဢဝ် Closure ၵႂႃႇၵဵပ်းဝႆႉၼႂ်း Variable ၽၢႆႇၼွၵ်ႈ။

```swift
var completionHandlers: [() -> Void] = []

// လူဝ်ႇသႂ်ႇ @escaping ၵွပ်ႈႁဝ်းဢဝ် Closure ၵႂႃႇၵဵပ်းဝႆႉ (Escape ဢွၵ်ႇၼွၵ်ႈ Function)
func addToQueue(handler: @escaping () -> Void) {
    completionHandlers.append(handler)
}

func downloadData(completion: @escaping (String) -> Void) {
    // ႁဵတ်းၵၢၼ်ၼႂ်း Background Thread (လူဝ်ႇပႂ်ႉၶၢဝ်းယၢမ်း)
    DispatchQueue.global().async {
        let data = "ၶေႃႈမုၼ်းမႃးယဝ်ႉၶႃႈ"
        completion(data) // Closure ႁဵတ်းၵၢၼ် ဝၢႆးလင် Function return ၵႂႃႇယဝ်ႉ
    }
}
```



---

### 3. လွင်ႈသတိ: Strong Reference Cycles
မိူဝ်ႈႁဝ်းၸႂ်ႉ `@escaping` ၼႂ်း Class ၼၼ်ႉ ႁဝ်းလူဝ်ႇသတိလွင်ႈ **`self`** ယဝ်ႉ။
ၵွပ်ႈဝႃႈ Closure တေ "ၵိုတ်း" (Capture) `self` ဝႆႉလႄႈ မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Memory တဵမ် (Memory Leak) ယဝ်ႉ။
ႁဝ်းတေလႆႈၸႂ်ႉ `[weak self]` တွၼ်ႈတႃႇႁႄႉၵင်ႈ လွင်ႈၼႆႉယဝ်ႉ (ႁဝ်းတေႁဵတ်း Lesson တၢင်ႇဢၼ်တွၼ်ႈတႃႇလွင်ႈၼႆႉ)။

---