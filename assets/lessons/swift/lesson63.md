## Lesson 63: Memory Safety: Understanding and Preventing Conflicting Access

Swift ပဵၼ် Language ဢၼ်မၼ်ႈၸႂ်လႆႈလွင်ႈ Memory Safety။ မၼ်းတေၸွႆးႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈ Code သွင်တွၼ်ႈ ၶတ်းၸႂ်တေ "မႄးလႅၵ်ႈလၢႆႈ" (Modify) ၶေႃႈมูล တူဝ်လဵဝ်ၵၼ် ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်ၶႃႈ။

### 1. Conflict ၼႆႉပဵၼ်သင်?
Conflict (လွင်ႈၶတ်းၵၼ်) တေၵတ်ႉမႃးမိူဝ်ႈမီးၵၢၼ် Access Memory ဢၼ်:
1.  မီးသေတွၼ်ႈၼိုင်ႈ (ဢမ်ႇၼၼ်တင်းသွင်တွၼ်ႈ) ပဵၼ်ၵၢၼ် **Write** (မႄးၶေႃႈมูล)။
2.  တင်းသွင်တွၼ်ႈ ၸီႉၸူး **Memory တီႈလဵဝ်ၵၼ်**။
3.  တင်းသွင်တွၼ်ႈ ႁဵတ်းၵၢၼ် **ၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်** (Overlapping)။



### 2. ၵၢၼ် Conflict ၼႂ်း In-Out Parameters
ၼႆႉပဵၼ်တီႈဢၼ်ၵတ်ႉ Conflict ၼမ်သုတ်း။ မိူဝ်ႈႁဝ်းသူင်ႇ Variable ၶဝ်ႈၵႂႃႇၼႂ်း Function လူၺ်ႈၸႂ်ႉ `inout`၊ Function ၼၼ်ႉတေ "ၵုမ်း" Memory တီႈၼၼ်ႉဝႆႉ တေႃႇပေႃးႁဵတ်းၵၢၼ်ယဝ်ႉၶႃႈ။

```swift
var playerHealth = 100

func balance(_ health1: inout Int, _ health2: inout Int) {
    let sum = health1 + health2
    health1 = sum / 2
    health2 = sum / 2
}

// ✅ ၸႂ်ႉလႆႈ (ၵွပ်ႈ Variable ပႅၵ်ႇၵၼ်)
var healthA = 100
var healthB = 50
balance(&healthA, &healthB)

// ❌ Conflict! (ၵွပ်ႈႁဝ်းၶတ်းၸႂ်တေ Write တီႈလဵဝ်ၵၼ် သွင်ပွၵ်ႈၼႂ်းၶၢဝ်းယၢမ်းလဵဝ်ၵၼ်)
// balance(&playerHealth, &playerHealth) 
```

### 3. ၵၢၼ် Conflict ၼႂ်း Methods (`self`)
ၼႂ်း Struct, `mutating` method တေၵုမ်း `self` ဝႆႉတင်းတူဝ်။ သင်ႁဝ်းသူင်ႇ Property ၼႂ်းတူဝ်မၼ်း ၶဝ်ႈၵႂႃႇပဵၼ် `inout` ၼႂ်း Method ၼၼ်ႉၼင်ႇၵဝ်ႇ၊ မၼ်းတေ Conflict ၵၼ်ၶႃႈ။

---

### 4. ၵွပ်ႈသင်လူဝ်ႇႁူႉလွင်ႈ Memory Safety?
1.  **Predictability:** ႁဵတ်းႁႂ်ႈ App ႁဝ်းႁဵတ်းၵၢၼ်လႆႈတႅတ်ႈတေႃး မိူၼ်ၼင်ႇဢၼ်ႁဝ်းဝူၼ်ႉဝႆႉ။
2.  **Crash Prevention:** Conflict Access ၸၢင်ႈႁဵတ်းႁႂ်ႈ App Crash ၵမ်းလဵဝ် (Runtime Error)။
3.  **Data Integrity:** ႁႄႉၵင်ႈဢမ်ႇႁႂ်ႈၶေႃႈมูล "လူႉ" (Corruption) လူၺ်ႈၵၢၼ် Write သွၼ်ႉၵၼ်။

---