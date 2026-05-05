## Lesson 53: Generics (Part 1): Writing Reusable, Type-Agnostic Code

**Generics** ပဵၼ်ၶိူင်ႈမိုဝ်းဢၼ်မီးၼမ်ႉၵတ်ႉသုတ်းၼိုင်ႈဢၼ်ၼႂ်း Swift။ မၼ်းၸွႆးႁႂ်ႈႁဝ်းတႅမ်ႈ Function ဢမ်ႇၼၼ် Type ဢၼ်ၸၢင်ႈႁဵတ်းၵၢၼ်ၸွမ်း **Type မဵဝ်းလႂ်ၵေႃႈလႆႈ** (မိူၼ်ၼင်ႇ String, Int, ဢမ်ႇၼၼ် Custom Struct ႁဝ်း) လူၺ်ႈယင်းၵုမ်းထိင်းလွင်ႈ **Type Safety** ဝႆႉမိူၼ်ၵဝ်ႇၶႃႈ။



### 1. ပၼ်ႁႃ (The Problem)
ဝူၼ်ႉတူၺ်းဝႃႈ ႁဝ်းၶႂ်ႈတႅမ်ႈ Function တွၼ်ႈတႃႇလႅၵ်ႈ (Swap) ၵႃႈၶၼ် Variable သွင်တူဝ်။ သင်ႁဝ်းဢမ်ႇၸႂ်ႉ Generics ႁဝ်းတေလႆႈတႅမ်ႈ Code ၸိုၼ်ႈၵၼ်ၼမ်တႄႉတႄႉ:

```swift
func swapInts(_ a: inout Int, _ b: inout Int) { ... }
func swapStrings(_ a: inout String, _ b: inout String) { ... }
```

### 2. ၵၢၼ်ၸႂ်ႉ Generic Function
ႁဝ်းၸႂ်ႉ **Placeholder** (တူဝ်တိုင်ႈတႅၼ်း) ဢၼ်ယူႇၼႂ်းမၢႆ **`<T>`** ဝႆႉၽၢႆႇလင်ၸိုဝ်ႈ Function ၶႃႈ။ `T` ၼႆႉမၢႆထိုင် "Type" မဵဝ်းလႂ်ၵေႃႈလႆႈ ဢၼ်တေမႃးမၵ်းမၼ်ႈမိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ (Call time) ယဝ်ႉ။

```swift
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temporary = a
    a = b
    b = temporary
}

var firstInt = 10
var secondInt = 20
swapValues(&firstInt, &secondInt) // Swift တေႁူႉႁင်းၵူၺ်းဝႃႈ T ပဵၼ် Int

var firstString = "Mao"
var secondString = "Sai"
swapValues(&firstString, &secondString) // Swift တေႁူႉႁင်းၵူၺ်းဝႃႈ T ပဵၼ် String
```

---

### 3. ၵွပ်ႈသင်လူဝ်ႇၸႂ်ႉ Generics?
1.  **Code Reusability:** တႅမ်ႈ Code ပွၵ်ႈလဵဝ် ၸႂ်ႉလႆႈၵူႈတီႈ။
2.  **Type Safety:** ဢမ်ႇမိူၼ်ၼင်ႇၵၢၼ်ၸႂ်ႉ `Any`၊ Generics တေၵူတ်ႇထတ်းဝႃႈ Type ဢၼ်သူင်ႇၶဝ်ႈမႃးၼၼ်ႉ တေလႆႈမဵဝ်းလဵဝ်ၵၼ်သေႇသေႇ။
3.  **Cleaner Code:** လူတ်းလွင်ႈတႅမ်ႈ Code ၸိုၼ်ႈ (Duplicate Code) ႁဵတ်းႁႂ်ႈမႄး Code လႆႈငၢႆႈ။

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸၢႆးမၢဝ်းၸၢင်ႈၸႂ်ႉ Generics တွၼ်ႈတႃႇတႅမ်ႈ 'Stack' ဢမ်ႇၼၼ် 'Queue' ဢၼ်ၵဵပ်းၶေႃႈมูล။ မိူၼ်ၼင်ႇ ၵဵပ်း History ၵၢၼ်ၼိပ်ႉ (Key History)။ ၸၢႆးမၢဝ်းၸၢင်ႈၸႂ်ႉ Code တူဝ်လဵဝ်ၵၼ်ၼၼ်ႉ တွၼ်ႈတႃႇၵဵပ်းလႆႈတင်း 'String' (တူဝ်လိၵ်ႈ) ဢမ်ႇၼၼ် 'Int' (Unicode) ၶႃႈယဝ်ႉ။"**

---