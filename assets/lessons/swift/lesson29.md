## Lesson 29: Closures (Part 1): Syntax and Type Inference

**Closure** ၼႆႉ တီႈတေႉမၼ်းၵေႃႈပဵၼ် Function ၼင်ႇၵဝ်ႇ။
တီႈ Java, Python ၶဝ်တေႉ ႁွင်ႉဝႃႈ Lambda Function, Anonymous Function ၼႆယဝ်ႉ။
ၵူၺ်းၵႃႈ မၼ်းမီးလၢႆးတႅမ်ႈ ဢၼ် "သႅၼ်ႈသႂ်" (Clean) လႄႈ ၵိုၵ်းၵပ်း (Compact) လိူဝ်ယဝ်ႉ။ 
ႁဝ်းၸၢင်ႈတႅမ်ႈ Closure သေသူင်ႇၵႂႃႇပဵၼ် Parameter ၼႂ်း Function တၢင်ႇဢၼ်လႆႈငၢႆႈငၢႆႈယဝ်ႉ။

### 1. Closure Expression Syntax
လၢႆးတႅမ်ႈ Closure ၼႆႉ မၼ်းတေယူႇၼႂ်းၶွပ်ႇၶဝ်ႈသွႆး `{}` တင်းသဵင်ႈသေ ၸႂ်ႉၶေႃႈၵႂၢမ်း **`in`** တွၼ်ႈတႃႇၸႅၵ်ႇ Argument လႄႈ Code ႁဝ်းယဝ်ႉ။

```swift
{ (parameters) -> returnType in
    statements
}
```

> **တူဝ်ယၢင်ႇ:** Closure ဢၼ်ႁပ်ႉ String သေဢမ်ႇ Return သင်။
```swift
let sayHello = { (name: String) in
    print("Hello, \(name)!")
}

sayHello("Sai Mao")
```

---

### 2. Type Inference
Swift ၼႆႉမီးၼမ်ႉၵတ်ႉတႄႉတႄႉ။ ပေႃးႁဝ်းသူင်ႇ Closure ၵႂႃႇၼႂ်း Function ဢၼ်မၵ်းမၼ်ႈ Type ဝႆႉယဝ်ႉၼၼ်ႉ ႁဝ်း**ဢမ်ႇလူဝ်ႇတႅမ်ႈ** Parameter Type လႄႈ Return Type မၼ်းၵေႃႈလႆႈယဝ်ႉ။

```swift
let keys = ["ၵ", "ၶ", "င"]

// လၢႆးတႅမ်ႈတဵမ်တဵမ်
let sortedKeys = keys.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// လၢႆးတႅမ်ႈလူၺ်ႈ Type Inference (Swift ႁူႉဝႃႈပဵၼ် String လႄႈ Bool ယဝ်ႉ)
let sortedShort = keys.sorted(by: { s1, s2 in s1 > s2 })
```

---

### 3. Implicit Returns
သင်ဝႃႈၼႂ်း Closure ႁဝ်းမီး Code **ထႅဝ်လဵဝ်** (Single-expression) ၵူၺ်းၼႆ ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈၶေႃႈၵႂၢမ်း `return` ၵေႃႈလႆႈ။
Swift တေဢဝ်ၵႃႈၶၼ်ၼၼ်ႉ Return ပၼ်ၵမ်းသိုဝ်ႈယဝ်ႉ။

```swift
let reversed = keys.sorted(by: { s1, s2 in s1 > s2 }) 
// မၢၼ်ႇမိူၼ်ၵၼ်တင်းမီး return
```

---