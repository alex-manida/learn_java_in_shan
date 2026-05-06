

## **Module 1 | Lesson 1: The SwiftUI Mindset: Declarative vs Imperative**

### **1. Imperative Programming (လၢႆးၸိသင်ႇ - "How")**
မိူဝ်ႈၵွၼ်ႇ တီႈ Android (XML) ဢမ်ႇၼၼ် UIKit ၼၼ်ႉ ႁဝ်းၸႂ်ႉလၢႆး **Imperative** ယဝ်ႉ။ 
မၼ်းမိူၼ်ၼင်ႇ ႁဝ်းပဵၼ် "ၸဝ်ႈဢႃႇၼႃႇ" ဢၼ်ၸိသင်ႇပၼ် ၶၵ်ႉတွၼ်ႈ (Steps) မၼ်းၵႂႃႇ တီႈလႂ်တီႈၼၼ်ႈ။
*   **လၢႆးႁဵတ်း:** ႁဝ်းတေလႆႈၵႂႃႇႁႃ (Find) ပုမ်ႇ (Button) မၼ်း၊ ယဝ်ႉၵေႃႈ သင်ႇႁႂ်ႈမၼ်းလႅၵ်ႈလၢႆႈ သီ (Color)၊ သင်ႇႁႂ်ႈမၼ်းလႅၵ်ႈလိၵ်ႈ (Text)။
*   **ပၼ်ႁႃ:** သင်ႁဝ်းလိုမ်းသင်ႇၼႆၸိုင် ၼႃႈၸေႃး (UI) တေဢမ်ႇၵႂႃႇၸွမ်းလွင်ႈတေႉ (Data) မၼ်းယဝ်ႉ။



### **2. Declarative Programming (လၢႆးလၢတ်ႈၼႄ - "What")**
**SwiftUI** သမ်ႉပဵၼ် **Declarative** ယဝ်ႉ။ ႁဝ်းဢမ်ႇလႆႈသင်ႇဝႃႈ "တေလႆႈႁဵတ်းႁိုဝ်လႅၵ်ႈ"၊ ၵူၺ်းၵႃႈ ႁဝ်းလၢတ်ႈၼႄဝႃႈ "ၼႃႈၸေႃး တေလႆႈမီးႁၢင်ႈၽၢင်ၸိူင်ႉႁိုဝ်" မိူဝ်ႈ Data မၼ်းလႅၵ်ႈလၢႆႈ ၼႆယဝ်ႉ။
*   **လၢႆးႁဵတ်း:** ႁဝ်းလၢတ်ႈဝႃႈ "သင်ဝႃႈ User Login ယဝ်ႉၼႆ ႁႂ်ႈၼႄၼႃႈ Dashboard၊ သင်ဝႃႈ ပႆႇလႆႈ Login ၼႆ ႁႂ်ႈၼႄၼႃႈ Login Screen"။
*   **ၽွၼ်းလီ:** မိူဝ်ႈ Data (isLoggedIn) လႅၵ်ႈလၢႆႈၵႂႃႇၼၼ်ႉ SwiftUI တေၸတ်းၵၢၼ် လႅၵ်ႈလၢႆႈ UI ပၼ်ႁင်းမၼ်း (Automatic refresh)။

---

### **3. SwiftUI View Structure (ပိုၼ်ႉထၢၼ် Structure)**

ၼႂ်း Xcode ၼၼ်ႉ ႁဝ်းတေႁၼ် Code ၼင်ႇပႃႈတႂ်ႈၼႆႉၶႃႈ:

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("မႂ်ႇသုင် ထုင်ႉမၢဝ်းၶမ်း!")
        }
        .padding()
    }
}
```

*   **`struct` vs `class`:** ၼႂ်း SwiftUI ၼႆႉ View ၼႆႉ မဝ်ၼႃႇ ယွၼ်ႉမၼ်းပဵၼ် **struct** (Value type) ယဝ်ႉ။ မၼ်းတေထုၵ်ႇသၢင်ႈမႂ်ႇယူႇတႃႇသေႇ မိူဝ်ႈ Data လႅၵ်ႈလၢႆႈယဝ်ႉ။
*   **`View` Protocol:** ၵူႈလွင်ႈလွင်ႈ ဢၼ်ႁဝ်းတေၼႄၼိူဝ် Screen လႆႈၼၼ်ႉ တေလႆႈၸွမ်း Protocol ၼႆႉ။
*   **`some View`:** ပဵၼ်လၢႆးလၢတ်ႈၼႄဝႃႈ "Property ၼႆႉ တေပၼ် (Return) View မႃးမဵဝ်းၼိုင်ႈ" (Opaque Type)။
*   **The `body`:** ပဵၼ်တီႈ ႁဝ်းတႅမ်ႈ Code တႃႇၼႄႁၢင်ႈၽၢင် UI ႁဝ်း။

---

### **4. Single Source of Truth**

တီႈ SwiftUI ၼႆႉ ႁဝ်းၸႂ်ႉ **Property Wrappers** မိူၼ်ၼင်ႇ `@State` တႃႇၵုမ်းထိင်း Data ယဝ်ႉ။ 
ပွင်ႇဝႃႈ ႁဝ်းဢမ်ႇလႆႈၵႂႃႇ Update Text တီႈ Label ႁင်းၵူၺ်း။
ႁဝ်းၵူၺ်းလႆႈ Update Variable (Data) ၵူၺ်းၵေႃႈ UI တေလႅၵ်ႈလၢႆႈၸွမ်းႁင်းမၼ်းယဝ်ႉ။

> **Mindset Shift:** ယႃႇပေဝူၼ်ႉဝႃႈ "တေလႆႈ Update UI ၸိူင်ႉႁိုဝ်"၊ ႁႂ်ႈဝူၼ်ႉဝႃႈ "တေလႆႈ Update Data ၸိူင်ႉႁိုဝ်" ၼႆၵေႃႈ UI တေၸွမ်းမႃးႁင်းမၼ်းၶႃႈ။

---

### **Summary**

| Topic | Explanation (Shan)                                                                                         |
| :--- |:-----------------------------------------------------------------------------------------------------------|
| **Imperative** | ပဵၼ်လၢႆးၸိသင်ႇၵႂႃႇ တီႈလႂ်တီႈၼၼ်ႈ (How to do)။                                                              |
| **Declarative** | ပဵၼ်လၢႆးလၢတ်ႈၼႄ ႁၢင်ႈၽၢင် UI ဢၼ်ႁဝ်းၶႂ်ႈလႆႈ (What it looks like)။                                          |
| **Struct View** | SwiftUI View ပဵၼ် Struct ဢၼ်မဝ်လႄႈ ၽႂ်း (Lightweight)။                                                     |
| **Single Source of Truth** | Data မီးတီႈလဵဝ်၊ ပေႃး Data လႅၵ်ႈ UI တေလႅၵ်ႈၸွမ်းႁင်းမၼ်း။                                                  |
| **Opaque Type (`some View`)** | လၢႆးလၢတ်ႈဝႃႈ ႁႂ်ႈ Return View မဵဝ်းၼိုင်ႈမႃး ဢၼ်ၵူၼ်းတႅမ်ႈ Code ဢမ်ႇတိုၼ်းလူဝ်ႇမၵ်းမၼ်ႈ Type မၼ်းၵူႈလွင်ႈ။ |

---