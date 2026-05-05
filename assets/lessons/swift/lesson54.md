## Lesson 54: Generics (Part 2): Constraints and Associated Types

ၼႂ်း Lesson 53 ႁဝ်းႁူႉဝႃႈ `T` ပဵၼ်သင်ၵေႃႈလႆႈ။ ၵူၺ်းၵႃႈ ၵမ်းမၢင်ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်းပဵၼ် "သင်ၵေႃႈလႆႈ" တႄႇတႄႉ။ ႁဝ်းၶႂ်ႈမၵ်းမၼ်ႈဝႃႈ *"T တေလႆႈပဵၼ် Type ဢၼ်မီးၼမ်ႉၵတ်ႉၸိူဝ်းၼႆႉၵူၺ်းၼႃ"*။ ဢၼ်ၼႆႉႁဝ်းႁွင်ႉဝႃႈ **Generic Constraints** ၶႃႈ။

### 1. Type Constraints (ၵၢၼ်မၵ်းၶွပ်ႇ)
ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ `T` တေလႆႈ Conform (ႁဵတ်းၸွမ်း) Protocol ဢၼ်မၵ်းမၼ်ႈဝႆႉ။



```swift
// T တေလႆႈပဵၼ် Type ဢၼ်ၼပ်ႉသွၼ်ႇလႆႈ (Numeric) ၵူၺ်း
func addValues<T: Numeric>(_ a: T, _ b: T) -> T {
    return a + b
}

print(addValues(5, 10))      // Int ✅
print(addValues(3.5, 2.1))   // Double ✅
// print(addValues("A", "B")) // Error: String ဢမ်ႇၸႂ်ႉ Numeric ❌
```

---

### 2. Associated Types (Generics ၼႂ်း Protocol)
Protocol ဢမ်ႇၸၢင်ႈၸႂ်ႉ `<T>` မိူၼ် Struct/Class လႆႈ။ ၵူၺ်းၵႃႈ မၼ်းၸႂ်ႉ Keyword **`associatedtype`** တွၼ်ႈတႃႇမၵ်းမၼ်ႈ Placeholder ဝႆႉၶႃႈ။

```swift
protocol Container {
    associatedtype Item // မၵ်းမၼ်ႈဝႆႉဝႃႈ တေမီး Type ဢၼ်ၼိုင်ႈယူႇၽၢႆႇၼႂ်း
    mutating func append(_ item: Item)
    var count: Int { get }
}

struct IntStack: Container {
    // Swift တေႁူႉႁင်းၵူၺ်းဝႃႈ Item ပဵၼ် Int ၵွပ်ႈႁဝ်းၸႂ်ႉ Int ၼႂ်း append
    var items = [Int]()
    mutating func append(_ item: Int) { items.append(item) }
    var count: Int { items.count }
}
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Constraints?
1.  **Functionality:** သင်ႁဝ်းဢမ်ႇမၵ်းမၼ်ႈဝႃႈ `T: Numeric`၊ Swift တေဢမ်ႇပၼ်ႁဝ်းၸႂ်ႉမၢႆ `+` ၵွပ်ႈမၼ်းဢမ်ႇမၼ်ႈၸႂ်ဝႃႈ `T` တေၼပ်ႉသွၼ်ႇလႆႈႁႃႉ။
2.  **Logic Safety:** တွၼ်ႈတႃႇႁႄႉၵင်ႈၵၢၼ်သူင်ႇၶေႃႈมูล ဢၼ်ဢမ်ႇၵဵဝ်ႇၶေႃၵၼ် ၶဝ်ႈမႃးၼႂ်း Function ႁဝ်း။
3.  **Specific Requirements:** မိူၼ်ၼင်ႇ `T: Equatable` (တွၼ်ႈတႃႇၼိူင်းၵၼ်လႆႈ) ဢမ်ႇၼၼ် `T: Codable` (တွၼ်ႈတႃႇလႅၵ်ႈပဵၼ် JSON လႆႈ)။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸၢႆးမၢဝ်းၸၢင်ႈၸႂ်ႉ Generic Constraints မိူဝ်ႈတႅမ်ႈ Function တွၼ်ႈတႃႇ 'Search' တူဝ်လိၵ်ႈ။ ၸၢႆးမၢဝ်းလူဝ်ႇမၵ်းမၼ်ႈ `T: Equatable` တွၼ်ႈတႃႇႁႂ်ႈ Swift ပၼ်ၼိူင်းတူၺ်းဝႃႈ တူဝ်လိၵ်ႈဢၼ် User ၼိပ်ႉၼၼ်ႉ မၼ်းမိူၼ်တင်းတူဝ်ဢၼ်ႁဝ်းႁႃယူႇၼၼ်ႉႁႃႉ ၼၼ်ႉယဝ်ႉၶႃႈ။"**

---