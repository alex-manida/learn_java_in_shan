## Lesson 27: Function Types: Using Functions as Variables and Arguments

ၼႂ်း Swift ၼႆႉ Function ပဵၼ် **First-class citizens** ယဝ်ႉ။
မၢႆထိုင်ဝႃႈ ႁဝ်းၸၢင်ႈဢဝ် Function သႂ်ႇၼႂ်း Variable လႆႈ၊ သူင်ႇၵႂႃႇပဵၼ် Parameter လႆႈ၊ ဢမ်ႇၼၼ် သူင်ႇမၼ်းဢွၵ်ႇမႃး (Return) ၼႂ်း Function တၢင်ႇဢၼ်ၵေႃႈလႆႈယဝ်ႉ။

### 1. Function Types (မဵဝ်းၶေႃႈမုၼ်း Function)
ၵူႈ Function မီး Type ႁင်းၵူၺ်းမၼ်းယဝ်ႉ။ ဢၼ်မၵ်းမၼ်ႈလူၺ်ႈ **Parameter types** လႄႈ **Return type** ယဝ်ႉ။

```swift
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}
// Function ၼႆႉမီး Type ပဵၼ်: (Int, Int) -> Int
```

---

### 2. Functions as Variables (ဢဝ် Function သႂ်ႇၼႂ်း Variable)
ႁဝ်းၸၢင်ႈၵဵပ်း Function ဝႆႉၼႂ်း Variable သေ ႁွင်ႉၸႂ်ႉမၼ်းမိူဝ်ႈလႂ်ၵေႃႈလႆႈယဝ်ႉ။

```swift
var mathFunction: (Int, Int) -> Int = addNumbers
print("Result: \(mathFunction(2, 3))") // Output: 5
```

---

### 3. Functions as Parameters (သူင်ႇ Function ၶဝ်ႈၵႂႃႇ)
ဢၼ်ၼႆႉမီးႁႅင်းတႄႉတႄႉ။ ႁဝ်းၸၢင်ႈသၢင်ႈ Function ဢၼ်ႁပ်ႉဢဝ် Function ထႅင်ႈယဝ်ႉ။

```swift
func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("The result is: \(mathFunc(a, b))")
}

printMathResult(addNumbers, 10, 5) // Output: 15
```

---

### 4. Returning Functions (သူင်ႇ Function ဢွၵ်ႇမႃး)
ႁဝ်းၸၢင်ႈဢဝ် Function ဝၢၵ်ႈပၼ် (Return) Function ထႅင်ႈတူဝ်ၼိုင်ႈၵေႃႈ လႆႈယဝ်ႉ။

```swift
func stepForward(input: Int) -> Int { return input + 1 }
func stepBackward(input: Int) -> Int { return input - 1 }

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

let move = chooseStepFunction(backward: true)
print(move(10)) // Output: 9
```

---