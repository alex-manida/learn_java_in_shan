## Lesson 58: Strong, Weak, and Unowned: Breaking Reference Cycles

ၵမ်းမၢင် Object သွင်တူဝ် ၸၢင်ႈ "ၵုမ်းၵၼ်ဝႆႉ" (Reference each other) တင်းသွင်ၽၢႆႇ။ ၼႆႉႁွင်ႉဝႃႈ **Strong Reference Cycle**။ မၼ်းတေႁဵတ်းႁႂ်ႈ ARC ဢမ်ႇၸၢင်ႈမွတ်ႇ Object သွင်တူဝ်ၼၼ်ႉလႆႈ (ၵွပ်ႈ Count တေဢမ်ႇပဵၼ် 0 သေပွၵ်ႈ) သေ ႁဵတ်းႁႂ်ႈ Memory တဵမ်ၶႃႈယဝ်ႉ။



### 1. Strong Reference (Default)
ၼႆႉပဵၼ်လၢႆးထမ်ႇမတႃႇ။ မိူဝ်ႈႁဝ်းသၢင်ႈ Variable၊ မၼ်းတေၵုမ်း Object ၼၼ်ႉဝႆႉ "ၵႅၼ်ႇၵႅၼ်ႇ" (Strongly)။ ARC တေဢမ်ႇမွတ်ႇ Object ၼၼ်ႉ တေႃႇ Variable ၼႆႉတေပဵၼ် nil ၶႃႈ။

### 2. Weak Reference (`weak`)
ႁဝ်းၸႂ်ႉ **`weak`** တွၼ်ႈတႃႇၸီႉၸူး Object လူၺ်ႈ "ဢမ်ႇၵုမ်း" မၼ်းဝႆႉ။
*   **ARC Count:** တေဢမ်ႇၼပ်ႉ (+0)။
*   **Type:** တေလႆႈပဵၼ် **Optional (`?`)** သေႇသေႇ။
*   မိူဝ်ႈ Object တူဝ်ၼၼ်ႉတၢႆၵႂႃႇ၊ Variable ဢၼ်ပဵၼ် `weak` ၼၼ်ႉ တေပဵၼ် **`nil`** ႁင်းၵူၺ်းၶႃႈ။
> **"ၼႆႉပဵၼ်လၢႆးဢၼ်လီသုတ်း တွၼ်ႈတႃႇၸႂ်ႉၼႂ်း Delegation Pattern (Lesson 52) ၶႃႈ။"**

### 3. Unowned Reference (`unowned`)
မိူၼ်ၵၼ်တင်း `weak` ၵူၺ်းၵႃႈ:
*   **Type:** ဢမ်ႇၸႂ်ႉ Optional (ပဵၼ် Type ထမ်ႇမတႃႇ)။
*   **Condition:** ႁဝ်းတေၸႂ်ႉမၼ်းၵေႃႈတေႃႇမိူဝ်ႈ ႁဝ်းမၼ်ႈၸႂ် 100% ဝႃႈ Object တူဝ်ၼၼ်ႉတေမီးယူႇသေႇသေႇ မိူဝ်ႈႁဝ်းႁွင်ႉၸႂ်ႉ။ သင်မၼ်းတၢႆၵႂႃႇယဝ်ႉ သေႁဝ်းၵႂႃႇႁွင်ႉၸႂ်ႉ `unowned` ၼႆ App တေ **Crash** ၵမ်းလဵဝ်ၶႃႈ။

---

### 4. တူဝ်ယၢင်ႇၵၢၼ်ၵႄႈပၼ်ႁႃ (Breaking the Cycle)
ဝူၼ်ႉတူၺ်းဝႃႈ `User` မီး `Keyboard` သေ `Keyboard` ၵေႃႈမီး `Owner (User)`။

```swift
class User {
    var keyboard: Keyboard?
}

class Keyboard {
    // ၸႂ်ႉ weak တွၼ်ႈတႃႇႁႄႉၵင်ႈ Cycle
    weak var owner: User? 
}
```


---