## Lesson 57: Automatic Reference Counting (ARC): How Swift Manages Memory

ၼႂ်း Swift, ႁဝ်းဢမ်ႇလူဝ်ႇမႃးသင်ႇမွတ်ႇ (Delete) Object ပႅတ်ႈႁင်းၵူၺ်းမိူၼ် C++။ Swift ၸႂ်ႉပိူင်ဢၼ်ႁွင်ႉဝႃႈ **ARC (Automatic Reference Counting)** တွၼ်ႈတႃႇၸတ်းၵၢၼ် Memory ႁင်းၵူၺ်းၶႃႈ။

### 1. ARC ႁဵတ်းၵၢၼ်ၸိူင်ႉၼင်ႇႁိုဝ်?
မိူဝ်ႈႁဝ်းသၢင်ႈ Object ဢွၵ်ႇမႃးၼႂ်း **Class** (Reference Type)၊ ARC တေတႄႇၼပ်ႉ **"Reference Count"** (ႁူဝ်ၼပ်ႉၵူၼ်းၸီႉၸူး)။

*   မိူဝ်ႈမီး Variable မႃးၸီႉၸူး Object ၼၼ်ႉ -> Count တေ **+1** ၶႃႈ။
*   မိူဝ်ႈ Variable ၼၼ်ႉထုၵ်ႇမွတ်ႇပႅတ်ႈ ဢမ်ႇၼၼ် ပဵၼ် nil -> Count တေ **-1** ၶႃႈ။
*   မိူဝ်ႈ **Count ပဵၼ် 0** မိူဝ်ႈ l -> ARC တေမွတ်ႇ Object ၼၼ်ႉဢွၵ်ႇၼႂ်း Memory ၵမ်းသိုဝ်ႈၶႃႈ။



### 2. ARC ႁဵတ်းၵၢၼ်ၸွမ်း Class ၵူၺ်း
ARC တေၸတ်းၵၢၼ် Memory ၵူၺ်းတွၼ်ႈတႃႇ **Class Instances**။ တွၼ်ႈတႃႇ **Structs** လႄႈ **Enums** တႄႉ ARC ဢမ်ႇလႆႈၵဵဝ်ႇၶေႃ ၵွပ်ႈမၼ်းပဵၼ် Value Type ဢၼ်ထုၵ်ႇ Copy ၵႂႃႇသေ ၸတ်းၵၢၼ် Memory ပႅၵ်ႇၵၼ်ၶႃႈ။

---

### 3. တူဝ်ယၢင်ႇၵၢၼ်ႁဵတ်းၵၢၼ်
```swift
class KeyboardUser {
    let name: String
    init(name: String) { 
        self.name = name 
        print("\(name) is initialized") 
    }
    deinit { 
        print("\(name) is being deinitialized (Memory Freed)") 
    }
}

var user1: KeyboardUser? = KeyboardUser(name: "Sai Mao") // Count = 1
var user2 = user1 // Count = 2 (ၸီႉၸူး Object တူဝ်လဵဝ်ၵၼ်)

user1 = nil // Count = 1
user2 = nil // Count = 0 -> deinit တေႁဵတ်းၵၢၼ်၊ Memory တေလွတ်ႈယဝ်ႉ!
```

---

### 4. ၵွပ်ႈသင်လူဝ်ႇႁူႉလွင်ႈ ARC?
1.  **Efficiency:** တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းဢမ်ႇၵိၼ် Memory ၼမ်ပိုၼ်းၵႂႃႇ။
2.  **Performance:** ပေႃးႁဝ်းႁူႉလၢႆး ARC ႁဵတ်းၵၢၼ်၊ App ႁဝ်းတေႁဵတ်းၵၢၼ်လႆႈၽႂ်း။
3.  **Preventing Memory Leaks:** ၼႆႉလွင်ႈယႂ်ႇသုတ်း။ သင် Count ဢမ်ႇယွမ်းပဵၼ် 0 သေပွၵ်ႈ (မိူၼ်ၼင်ႇမီး Strong Reference Cycle)၊ Object ၼၼ်ႉတေၶင်ဝႆႉၼႂ်း Memory တေႃႇ App Crash ယဝ်ႉၶႃႈ။

---