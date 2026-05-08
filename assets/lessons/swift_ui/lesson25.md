
## **Module 4 | Lesson 25: LazyVGrid and LazyHGrid: Creating Responsive Grids**

### **1. Grid ပဵၼ်သင်?**

မိူဝ်ႈ Module 3 ႁဝ်းႁဵၼ်းလွင်ႈ **List** ဢၼ်ၼႄ Data ပဵၼ်ထႅဝ်လူင်းမႃးတၢင်းတႂ်ႈ (Row by Row) ယဝ်ႉ။
ၵူၺ်းၵႃႈ သင်ႁဝ်းၶႂ်ႈၼႄ Data လၢႆလၢႆဢၼ်ၼႂ်းထႅဝ်လဵဝ်ၵၼ် (မိူၼ်ၼင်ႇ App Store ဢမ်ႇၼၼ် Instagram) ႁဝ်းတေလႆႈၸႂ်ႉ **Grid** ယဝ်ႉ။

* **LazyVGrid:** ၸတ်းဝၢင်ႈပၼ်လွၵ်းတၢင်းတင်ႈ (Vertical)။
* **LazyHGrid:** ၸတ်းဝၢင်ႈပၼ်လွၵ်းတၢင်းၼွၼ်း (Horizontal)။
* **Why "Lazy"?:** မၼ်းတေ "သၢင်ႈ" (Render) View တွၼ်ႈဢၼ် User တူၺ်းႁၼ်ၼၼ်ႉၵူၺ်း။ ၼႆႉႁဵတ်းႁႂ်ႈ App ႁဝ်းဢမ်ႇၼၵ်း Memory မိူဝ်ႈမီး Data ၼမ်ၼမ်ယဝ်ႉ။

### **2. GridItem: ၵၢၼ်မၵ်းမၼ်ႈသဵၼ်ႈ (Columns)**

တႃႇတေၸႂ်ႉ Grid ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈဝႃႈ ၼႂ်းၼိုင်ႈထႅဝ် တေႁႂ်ႈမီး (Column) လၢႆဢၼ်ၼႆယဝ်ႉ။ 
လွင်ႈၼႆႉ ႁဝ်းၸႂ်ႉ `GridItem` လႄႈ မီးဝႆႉ 3 လၢႆးၼႆႉယဝ်ႉ:

1. **Fixed:** မၵ်းမၼ်ႈတင်းယႂ်ႇ ပဵၼ်ပိူင်တၢႆ (မိူၼ်ၼင်ႇ 100pt)။
2. **Flexible:** ႁႂ်ႈမၼ်းၶႂၢၵ်ႈဢွၵ်ႇၸွမ်းၼႃႈၸေႃး (ႁၼ်ၼမ်သေပိူၼ်ႈ)။
3. **Adaptive:** ႁႂ်ႈ SwiftUI လိူၵ်ႈသႂ်ႇပၼ်ႁင်းမၼ်း ဝႃႈၼႃႈၸေႃးၼၼ်ႉ တေသႂ်ႇလႆႈလၢႆဢၼ်။

---

### **3. Example Code: Course Grid Dashboard**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Dashboard ဢၼ်ၼႄ Logo သင်တၢၼ်းပဵၼ်လွၵ်းၶႃႈ:

```swift
import SwiftUI

struct GridLessonView: View {
    // 1. မၵ်းမၼ်ႈ Columns (ႁႂ်ႈမီး 2 လွၵ်း ဢၼ်ၶႂၢၵ်ႈၸွမ်းၼႃႈၸေႃး)
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let tmkIcons = ["swift", "bird", "terminal", "server.rack", "cpu", "keyboard"]
    
    var body: some View {
        ScrollView { // Grid လူဝ်ႇယူႇၼႂ်း ScrollView တႃႇႁႂ်ႈမၼ်းပၼ်ႇFလႆႈ
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(tmkIcons, id: \.self) { icon in
                    VStack {
                        Image(systemName: icon)
                            .font(.largeTitle)
                            .frame(width: 80, height: 80)
                            .background(Color.blue.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                        Text(icon.capitalized)
                            .font(.caption).bold()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.05), radius: 5)
                }
            }
            .padding()
        }
        .background(Color.secondary.opacity(0.1))
    }
}

```

---

### **Summary**

| Topic | Explanation (Shan)                                                  |
| --- |---------------------------------------------------------------------|
| **LazyVGrid** | ၸတ်းဝၢင်ႈ View ပဵၼ်လွၵ်းတၢင်းတင်ႈ ဢၼ်လႅၼ်ႈလီ (Lazy loading)။        |
| **GridItem** | ၶိူင်ႈမိုဝ်းတႃႇမၵ်းမၼ်ႈ တင်းယႂ်ႇ လႄႈ ႁူဝ်ၼပ်ႉ လွၵ်း (Columns/Rows)။ |
| **Flexible** | လၢႆးၸတ်းလွၵ်း ႁႂ်ႈမၼ်းမႄးတင်းယႂ်ႇပဵင်းၵၼ် ၸွမ်းၼႃႈၸေႃး iPhone/iPad။ |
| **ScrollView** | လူဝ်ႇၸႂ်ႉႁေႃႇ Grid ဝႆႉ တႃႇႁႂ်ႈ User ပၼ်ႇတူၺ်း (Scroll) လႆႈ။         |

---