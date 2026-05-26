## Lesson 54: Generics (Part 2): Constraints and Associated Types

ၼႂ်း Lesson 53 ႁဝ်းႁူႉယဝ်ႉဝႃႈ `T` ၼႆႉ ပဵၼ်သင်ၵေႃႈလႆႈ ၼႆယဝ်ႉ။ ၵူၺ်းၵႃႈ မၢင်ၵမ်း ႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈမၼ်းပဵၼ် "သင်ၵေႃႈလႆႈ"။ 
ႁဝ်းၶႂ်ႈမၵ်းမၼ်ႈဝႃႈ *"T တေလႆႈပဵၼ် Type ဢၼ်မီးၼမ်ႉၵတ်ႉၸိူဝ်းၼႆႉၵူၺ်းၼႃ"* ၼႆယဝ်ႉ။ ဢၼ်ၼႆႉႁဝ်းႁွင်ႉဝႃႈ **Generic Constraints** ယဝ်ႉ။

### 1. Type Constraints (ၵၢၼ်မၵ်းၶွပ်ႇ)
ႁဝ်းၸၢင်ႈသင်ႇႁႂ်ႈ `T` တေလႆႈ Conform (ႁဵတ်းၸွမ်း) Protocol ဢၼ်မၵ်းမၼ်ႈဝႆႉ ၼင်ႇၼႆယဝ်ႉ။



```swift
// T တေလႆႈပဵၼ် Type ဢၼ်ၼပ်ႉသွၼ်ႇလႆႈ (Numeric) ၵူၺ်း
func addValues<T: Numeric>(_ a: T, _ b: T) -> T {
    return a + b
}

print(addValues(5, 10))      // Int ✅
print(addValues(3.5, 2.1))   // Double ✅
// print(addValues("A", "B")) // Error: String ဢမ်ႇၸႂ် Numeric ❌
```

---

### 2. Associated Types (Generics ၼႂ်း Protocol)
Protocol ဢမ်ႇၸၢင်ႈၸႂ်ႉ `<T>` မိူၼ် Struct/Class လႆႈ။ ၵူၺ်းၵႃႈ မၼ်းၸႂ်ႉ Keyword **`associatedtype`** တွၼ်ႈတႃႇမၵ်းမၼ်ႈ Placeholder လႆႈ ၼင်ႇၼႆယဝ်ႉ။

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
1.  **Functionality:** သင်ႁဝ်းဢမ်ႇမၵ်းမၼ်ႈဝႃႈ `T: Numeric` ၼႆ Swift တေဢမ်ႇပၼ်ႁဝ်းၸႂ်ႉမၢႆ `+` ၵွပ်ႈမၼ်းဢမ်ႇမၼ်ႈၸႂ်ဝႃႈ `T` တေၼပ်ႉသွၼ်ႇလႆႈ ၼႆယဝ်ႉ။
2.  **Logic Safety:** တွၼ်ႈတႃႇႁႄႉၵင်ႈ ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း ဢၼ်ဢမ်ႇၵဵဝ်ႇၵၼ် ၶဝ်ႈမႃးၼႂ်း Function ႁဝ်း။
3.  **Specific Requirements:** မိူၼ်ၼင်ႇ `T: Equatable` (တွၼ်ႈတႃႇၼိူင်းၵၼ်လႆႈ) ဢမ်ႇၼၼ် `T: Codable` (တွၼ်ႈတႃႇလႅၵ်ႈပဵၼ် JSON လႆႈ)။

---