

## **Module 4 | Lesson 28: GeometryReader: Building Proportion-based Layouts**

### **1. GeometryReader ပဵၼ်သင်?**

မၼ်းပဵၼ် Container View ဢၼ် "လၢတ်ႈပၼ်" ႁဝ်းဝႃႈ ပိုၼ်ႉတီႈဢၼ်မၼ်းယူႇဝႆႉၼၼ်ႉ မီးတၢင်းၵႂၢင်ႈ (Width) လႄႈ တၢင်းသုင် (Height) ၵႃႊႁိုဝ်ၼႆယဝ်ႉ။

* မၼ်းပၼ် **`proxy`** (GeometryProxy) ဢၼ်ႁဵတ်းႁႂ်ႈႁဝ်းႁူႉၶေႃႈမုၼ်းတင်းယႂ်ႇၼႃႈၸေႃးလႆႈ။
* ၸွႆႈႁႂ်ႈႁဝ်းၸတ်း UI ႁႂ်ႈပဵင်းၵၼ် (Proportion) မိူၼ်ၼင်ႇ `width * 0.5` ၶႃႈ။

### **2. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇၸႂ်ႉမၼ်း?**

1. **Responsive Design:** တႃႇႁႂ်ႈ UI ႁၢင်ႈလီ တင်းၼိူဝ် iPhone ဢွၼ်ႇ လႄႈ iPad ယႂ်ႇ။
2. **Relative Sizing:** မၵ်းမၼ်ႈတင်းယႂ်ႇ View ၼိုင်ႈဢၼ် ၸွမ်းၼင်ႇတင်းယႂ်ႇၶွင် View ထႅင်ႈဢၼ်ၼိုင်ႈ။
3. **Visual Effects:** ၸႂ်ႉတႃႇတူၺ်း Position ၶွင် View မိူဝ်ႈ User ပၢၵ်ႈ Scroll (Parallax Effect)။

---

### **3. Example Code: Proportion-based Layout**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႅၵ်ႇၼႃႈၸေႃးပဵၼ် 2 တွၼ်ႈ ႁႂ်ႈပဵင်းၵၼ်တႃႇသေႇၶႃႈ:

```swift
import SwiftUI

struct GeometryLessonView: View {
    var body: some View {
        // 1. ႁေႃႇ Layout လူၺ်ႈ GeometryReader
        GeometryReader { proxy in
            VStack(spacing: 0) {
                
                // တွၼ်ႈၼိူဝ်: ႁႂ်ႈမီးတင်းယႂ်ႇ 1/3 ၶွင်ၼႃႈၸေႃး
                ZStack {
                    Color.blue
                    Text("Top 33%")
                        .foregroundColor(.white)
                        .font(.title)
                }
                .frame(height: proxy.size.height * 0.33)
                
                // တွၼ်ႈတႂ်ႈ: ႁႂ်ႈမီးတင်းယႂ်ႇ 2/3 ၶွင်ၼႃႈၸေႃး
                ZStack {
                    Color.orange
                    VStack {
                        Text("Bottom 66%")
                            .font(.title)
                        
                        Text("Screen Width: \(Int(proxy.size.width))")
                        Text("Screen Height: \(Int(proxy.size.height))")
                    }
                }
                .frame(height: proxy.size.height * 0.67)
            }
        }
        .ignoresSafeArea() // ပၼ်သုၼ်ႇႁႂ်ႈမၼ်းတႅၵ်ႈထိုင်ၶွပ်ႇၼႃႈၸေႃးတင်းမူတ်း
    }
}

```

---

### **4. ၾၢင်ႉသတိ (Caution)**

`GeometryReader` မၼ်းတေ "ၸုပ်း" (Absorb) ပိုၼ်ႉတီႈတင်းမူတ်း ဢၼ်မီးဝႆႉၼၼ်ႉၶႃႈ။ 
သင်ၸဝ်ႈၵဝ်ႇဢမ်ႇမၵ်းမၼ်ႈ `.frame` ႁႂ်ႈမၼ်းလီလီၼႆ မၼ်းၸၢင်ႈႁဵတ်းႁႂ်ႈ Layout ၸဝ်ႈၵဝ်ႇ "လႅၼ်ႈ" (Shift) ၵႂႃႇၽၢႆႇသၢႆႉၼိူဝ်သုတ်း ႁင်းမၼ်းၶႃႈ။

---

### **Summary**

| Concept | Explanation (Shan)                                                   |
| --- |----------------------------------------------------------------------|
| **GeometryProxy** | တူဝ်တႅၼ်းဢၼ်လၢတ်ႈပၼ် တင်းယႂ်ႇ (Size) လႄႈ တီႈယူႇ (Coordinate)။        |
| **proxy.size.width** | တၢင်းၵႂၢင်ႈတင်းမူတ်း ၶွင် Container ၼၼ်ႉ။                            |
| **Proportion** | ၵၢၼ်ၸတ်း UI ပဵၼ်ပိူဝ်ႇသႅၼ်ႈ (%) တႅၼ်းတၢင် ၵၢၼ်သႂ်ႇတူဝ်ၼပ်ႉ ပိူင်တၢႆ။ |
| **Responsive** | ၸွႆႈႁႂ်ႈ App ႁၢင်ႈလီ တီႈၵူႊၼႃႈၸေႃး (Multiple Devices)။               |

---