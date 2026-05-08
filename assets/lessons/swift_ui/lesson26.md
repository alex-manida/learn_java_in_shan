

## **Module 4 | Lesson 26: ScrollView Mastery: Horizontal and Vertical Scrolling**

### **1. ScrollView ပိုၼ်ႉထၢၼ်**

ၵမ်ႉၼမ်ႁဝ်းၸႂ်ႉ `ScrollView` တႃႇပၢၵ်ႈလူင်းတၢင်းတႂ်ႈ (Vertical) ယဝ်ႉ။ မၼ်းတေ "ႁေႃႇ" (Wrap) Content ႁဝ်းဝႆႉ သေသင် Content ၼၼ်ႉယၢဝ်းလိူဝ်ၼႃႈၸေႃးၼႆ မၼ်းတေပၼ် Scroll လႆႈႁင်းမၼ်းယဝ်ႉ။

### **2. Horizontal Scrolling (တၢင်းၼွၼ်း)**

သင်ႁဝ်းၶႂ်ႈႁဵတ်းသဵၼ်ႈမၢႆ ဢၼ်ပၢၵ်ႈၵႂႃႇ ၽၢႆႇသၢႆႉ/ၶႂႃ (မိူၼ်ၼင်ႇ Netflix ဢမ်ႇၼၼ် App Store Story) ၼႆၸိုင် ႁဝ်းလူဝ်ႇမၵ်းမၼ်ႈ Axis မၼ်းယဝ်ႉ။

* **လၢႆးတႅမ်ႈ:** `ScrollView(.horizontal, showsIndicators: false)`
* **showsIndicators:** သင်ႁဝ်းသႂ်ႇ `false` ၼႆ သဵၼ်ႈ Scroll ဢွၼ်ႇၼၼ်ႉတေဢမ်ႇၼႄ (ႁဵတ်းႁႂ်ႈ UI ႁၢင်ႈလီလိူဝ်) ယဝ်ႉ။

### **3. ScrollView Indicators & Content Insets**

ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈဝႃႈ ႁႂ်ႈမၼ်းပၼ်ႇၵႂႃႇထိုင်တီႈလႂ် ဢမ်ႇၼၼ် ႁႂ်ႈမၼ်းမီးလွၵ်းပဝ်ႇ (Padding) တီႈႁူဝ်လႄႈတၢင်းပၢႆ ၸိူင်ႉႁိုဝ်ၼႆယဝ်ႉ။

---

### **4. Example Code: Netflix-style Dashboard**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈၼႃႈจอ ဢၼ်မီးတင်း Horizontal Scroll (တၢင်းၼွၼ်း) တႃႇလိူၵ်ႈ Category လႄႈ Vertical Scroll (တၢင်းတင်ႈ) တႃႇတူၺ်းသင်တၢၼ်းၶႃႈ:

```swift
import SwiftUI

struct ScrollViewMasteryView: View {
    let categories = ["Mobile", "Web", "AI", "Database", "Design", "Backend", "Security"]
    
    var body: some View {
        NavigationStack {
            // 1. တၢင်းတင်ႈ (Main Container)
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("Categories")
                        .font(.title2).bold()
                        .padding(.horizontal)
                    
                    // 2. တၢင်းၼွၼ်း (Horizontal Scroll)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(categories, id: \.self) { cat in
                                Text(cat)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Divider().padding(.horizontal)
                    
                    Text("Recent Courses")
                        .font(.title2).bold()
                        .padding(.horizontal)
                    
                    // 3. Vertical Content (Cards)
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.secondary.opacity(0.1))
                            .frame(height: 150)
                            .overlay(
                                Text("Course Card \(index + 1)")
                                    .foregroundColor(.secondary)
                            )
                            .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("TMK Academy")
        }
    }
}

```

---

### **Summary**

| Feature | Explanation (Shan)                                                      |
| --- |-------------------------------------------------------------------------|
| **.vertical** | လၢႆးပၢၵ်ႈ လူင်းတၢင်းတႂ်ႈ (Default)။                                     |
| **.horizontal** | လၢႆးပၢၵ်ႈ ၵႂႃႇၽၢႆႇသၢႆႉ/ၶႂႃ (လူဝ်ႇၸႂ်ႉ `HStack` ၼႂ်းမၼ်း)။               |
| **showsIndicators** | ပိုတ်ႇ/ပိၵ်ႉ သဵၼ်ႈၼႄလွင်ႈ Scroll (Scroll Bar)။                          |
| **Spacing** | ၵၢၼ်ၸတ်းလွၵ်းပဝ်ႇ ၼႂ်း `HStack` ဢမ်ႇၼၼ် `VStack` ဢၼ်ယူႇၼႂ်း ScrollView။ |

---