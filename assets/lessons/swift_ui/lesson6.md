
## **Module 1 | Lesson 6: Spacers, Dividers, and Layout Priority**

### **1. Spacer (တူဝ်ပၼ်ဝၢင်ႈပဝ်ႇ)**
`Spacer()` ပဵၼ် View ဢၼ်ဢမ်ႇမီးႁၢင်ႈၽၢင်သင် ၵူၺ်းၵႃႈမၼ်းမီးၼႃႈတီႈ "ယၼ်" (Push) View တၢင်ႇဢၼ်ႁႂ်ႈၵႂႃႇယူႇတီႈသုတ်း။
*   **ၼႂ်း HStack:** သင်ႁဝ်းသႂ်ႇ Spacer ဝႆႉၵၢင် Views သွင်ဢၼ်၊ မၼ်းတေယၼ်ဢၼ်ၼိုင်ႈၵႂႃႇၽၢႆႇသၢႆႉသုတ်း လႄႈ ထႅင်ႈဢၼ်ၼိုင်ႈၵႂႃႇၽၢႆႇၶႂႃသုတ်း။
*   **ၼႂ်း VStack:** မၼ်းတေယၼ် Views ႁႂ်ႈၵႂႃႇယူႇ ၼိူဝ်သုတ်း လႄႈ တႂ်ႈသုတ်း။
*   **Flexible:** Spacer တေယိုတ်ႈလႆႈတေႃႇထိုင် ဢွင်ႈတီႈပဝ်ႇ မူတ်းၵႂႃႇၶႃႈ။



### **2. Divider (သဵၼ်ႈတတ်း)**
`Divider()` ၸႂ်ႉတႃႇၶႅၼ်ႈသဵၼ်ႈတတ်းၵၢင် Views ႁႂ်ႈႁၼ်လွင်ႈပႅၵ်ႇပိူင်ႈၵၼ်။
*   မၼ်းတေတတ်းပဵၼ်သဵၼ်ႈ "ၼွၼ်း" (Horizontal) မိူဝ်ႈယူႇၼႂ်း VStack။
*   မၼ်းတေတတ်းပဵၼ်သဵၼ်ႈ "တင်ႈ" (Vertical) မိူဝ်ႈယူႇၼႂ်း HStack (ၵူၺ်းၵႃႈ လူဝ်ႇမၵ်းမၼ်ႈ Height ႁႂ်ႈမၼ်း)။

### **3. Layout Priority (လွင်ႈပၼ်သုၼ်ႇ Views)**
မိူဝ်ႈၼႃႈၸေႃးႁဝ်းၵႅပ်ႈၼႃႇ (မိူၼ်ၼင်ႇ iPhone SE) ၼၼ်ႉ Views တေလႆႈၶႄႉၵၼ် (Compete) တႃႇဢဝ်ဢွင်ႈတီႈယဝ်ႉ။
*   Default SwiftUI တေပၼ်သုၼ်ႇၵူႈ View ပဵင်းၵၼ် (Priority = 0)။
*   သင်ႁဝ်းသႂ်ႇ `.layoutPriority(1)` တီႈ View ၼိုင်ႈဢၼ်၊ SwiftUI တေပၼ်ဢွင်ႈတီႈ View ၼၼ်ႉၵွၼ်ႇ ၸင်ႇတေၸႅၵ်ႇပၼ်တၢင်ႇၸိူဝ်းယဝ်ႉ။
*   တွၼ်ႈၼႆႉၸွႆႈႁႂ်ႈ Text ဢၼ်လွင်ႈယႂ်ႇ ဢမ်ႇထုၵ်ႇတတ်း (Truncate) ၵႂႃႇၼၼ်ႉၶႃႈ။

---

### **Example Code (တူဝ်ယၢင်ႇ Code)**

```swift
import SwiftUI

struct Lesson6View: View {
    var body: some View {
        VStack {
            // 1. Spacer ၼႂ်း HStack တႃႇႁဵတ်း Header
            HStack {
                Text("Dashboard")
                    .font(.title).bold()
                
                Spacer() // ယၼ် Text ၵႂႃႇသၢႆႉသုတ်း လႄႈ Icon ၵႂႃႇၶႂႃသုတ်း
                
                Image(systemName: "person.circle.fill")
                    .font(.largeTitle)
            }
            .padding()
            
            Divider() // သဵၼ်ႈတတ်း
            
            // 2. Layout Priority
            HStack {
                Text("This is a very long description that might get cut off on small screens.")
                    .layoutPriority(1) // ပၼ်သုၼ်ႇလိၵ်ႈၼႆႉၼႄတဵမ်တဵမ်ၵွၼ်ႇ
                
                Spacer()
                
                Text("2026")
                    .foregroundColor(.secondary)
            }
            .padding()
            
            Spacer() // ယၼ်ၵူႈလွင်ႈလွင်ႈ ႁႂ်ႈၶိုၼ်ႈၵႂႃႇယူႇၽၢႆႇၼိူဝ်သုတ်း
        }
    }
}
```

---

### **Summary**

| Component | Explanation (Shan)                                                    |
| :--- |:----------------------------------------------------------------------|
| **Spacer()** | ၸွႆႈယၼ် Views တၢင်ႇဢၼ် ႁႂ်ႈၵႂႃႇယူႇတီႈသုတ်း (ႁဵတ်းႁႂ်ႈမီး Whitespace)။ |
| **Divider()** | သဵၼ်ႈတတ်းၵၢင် Views တႃႇၸႅၵ်ႇတွၼ်ႈ (Section)။                          |
| **Layout Priority** | မၵ်းမၼ်ႈဝႃႈ View လႂ်လွင်ႈယႂ်ႇသေပိူၼ်ႈ တႃႇဢဝ်ဢွင်ႈတီႈၼိူဝ် ၼႃႈၸေႃး။    |
| **Flexibility** | Spacer တေယိုတ်ႈလႆႈၸွမ်း တင်းယႂ်ႇၼႃႈၸေႃး ဢၼ်ပႅၵ်ႇၵၼ်။                  |

---