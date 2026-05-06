

## **Module 1 | Lesson 3: The 'Big Three' Layout Stacks: VStack, HStack, and ZStack**

ၼႂ်း SwiftUI ၼႆႉ ႁဝ်းဢမ်ႇၸႂ်ႉလၢႆးမၵ်းမၼ်ႈ တီႈယူႇ (X, Y Coordinates) ၼင်ႇ Imperative UI။
ႁဝ်းၸႂ်ႉ **Stacks** တႃႇ "ႁေႃႇ" (Wrap) Views ႁဝ်းယဝ်ႉ။

### **1. VStack (Vertical Stack)**
**VStack** ၸွႆႈဝၢင်း Views ႁဝ်းႁႂ်ႈမၼ်း "ၶပ်ႉလူင်းတၢင်းတႂ်ႈ" (Top to Bottom) ယဝ်ႉ။
*   **လၢႆးၸႂ်ႉ:** မိူၼ်ၼင်ႇ ႁဝ်းတေဝၢင်း ႁၢင်ႈ (Image) ဝႆႉၽၢႆႇၼိူဝ်၊ ယဝ်ႉၵေႃႈ မီး ႁူဝ်ၶေႃႈ (Title) လႄႈ လိၵ်ႈ (Text) ဝႆႉၽၢႆႇတႂ်ႈမၼ်း။
*   **Property:** ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈ `alignment` (ႁႂ်ႈမၼ်း တမ်းဝၢင်းပၼ် ၽၢႆႇသၢႆႉ .leading ဢမ်ႇၼၼ် ၽၢႆႇၶႂႃ .trailing) လႄႈ `spacing` (တီႈပဝ်ႇ ၵႄႈၵၢင် Views)။

### **2. HStack (Horizontal Stack)**
**HStack** ၸွႆႈဝၢင်း Views ႁႂ်ႈမၼ်း "ၶပ်ႉၵႂႃႇၽၢႆႇၶႂႃ" (Left to Right) ယဝ်ႉ။
*   **လၢႆးၸႂ်ႉ:** မိူၼ်ၼင်ႇ ႁဝ်းၶႂ်ႈဝၢင်း Icon ဝႆႉၽၢႆႇသၢႆႉသေ ဝၢင်းလိၵ်ႈ (Text) ဝႆႉၽၢႆႇၶႂႃမၼ်း ၼႂ်းထႅဝ်လဵဝ်ၵၼ်။
*   **Property:** ၸၢင်ႈမၵ်းမၼ်ႈ `alignment` ႁႂ်ႈမၼ်းၶပ်ႉ ၽဵင်ႇပဵင်းၵၼ် တၢင်းၼိူဝ် .top ဢမ်ႇၼၼ် တၢင်းတႂ်ႈ .bottom။

### **3. ZStack (Depth Stack)**
**ZStack** ၸွႆႈဝၢင်း Views ႁႂ်ႈမၼ်း "သွၼ်ႉၵၼ်" (Back to Front) ယဝ်ႉ။
*   **လၢႆးၸႂ်ႉ:** မိူၼ်ၼင်ႇ ႁဝ်းၶႂ်ႈသႂ်ႇ သီပိုၼ်ႉလင် (Background Color) ဝႆႉတၢင်းလင်သုတ်း၊ ယဝ်ႉၵေႃႈ တႅမ်ႈလိၵ်ႈသႂ်ႇၼိူဝ်မၼ်း။
*   **Z-Axis:** View ဢၼ်တႅမ်ႈဝႆႉတၢင်းၼိူဝ်သုတ်းၼႂ်း Code တေယူႇတၢင်းလင်သုတ်း၊ View ဢၼ်တႅမ်ႈဝႆႉတၢင်းတႂ်ႈသုတ်းၼႂ်း Code တေမႃးယူႇၼႃႈသုတ်း (Overlay) ယဝ်ႉ။

---

### **Example Code (တူဝ်ယၢင်ႇ)**

```swift
ZStack {
    Color.blue.ignoresSafeArea() // ပိုၼ်ႉလင်သီသွမ်ႇ
    
    VStack(alignment: .leading, spacing: 20) {
        HStack {
            Image(systemName: "star.fill")
            Text("Thung Mao Kham")
        }
        Text("Developing for the Community")
            .font(.caption)
    }
    .padding()
    .background(Color.white)
    .cornerRadius(10)
}
```

---

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈႁဵၼ်း)**

| Stack Type | Direction (Shan)              | Usage Example                                  |
| :--- |:------------------------------|:-----------------------------------------------|
| **VStack** | ၶပ်ႉလူင်းတၢင်းတႂ်ႈ (Vertical) | ဝၢင်း Title လႄႈ Subtitle ၶပ်ႉၵၼ်လူင်းမႃး။      |
| **HStack** | ၶပ်ႉၵႂႃႇၽၢႆႇၶႂႃ (Horizontal)  | ဝၢင်း Icon လႄႈ Text ႁႂ်ႈယူႇထႅဝ်လဵဝ်ၵၼ်။        |
| **ZStack** | သွၼ်ႉၵၼ် (Depth / Layers)     | သႂ်ႇ Text တၢင်းၼိူဝ် Image ဢမ်ႇၼၼ် Background။ |
| **Spacing** | တီႈယူႇပဝ်ႇ ၵႄႈၵၢင် Views      | ၸတ်းဝၢင်ႈႁႂ်ႈ UI မီးဢွင်ႈတီႈပဝ်ႇ (Whitespace)။ |
| **Alignment** | လၢႆးၶပ်ႉၸႅၼ်ႇ                 | ၸတ်းႁႂ်ႈ Views ပဵင်းၵၼ် (Left, Right, Center)။ |

---