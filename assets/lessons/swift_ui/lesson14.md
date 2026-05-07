

## **Module 2 | Lesson 14: Buttons and Haptic Feedback**

### **1. Buttons ၼႂ်း SwiftUI**
ပုမ်ႇ (Button) ၼႂ်း SwiftUI မီးတွၼ်ႈယႂ်ႇ 2 တွၼ်ႈ:
*   **Action:** Code ဢၼ်ႁဝ်းၶႂ်ႈႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ် မိူဝ်ႈၼဵၵ်း (Trigger)။
*   **Label:** ႁၢင်ႈၽၢင် ပုမ်ႇ (Text, Image, ဢမ်ႇၼၼ် Stacks)။

### **2. Button Styles**
SwiftUI မီး Style ဢၼ်ႁၢင်ႈႁႅၼ်းဝႆႉပၼ်ယဝ်ႉ (Built-in Styles):
*   `.buttonStyle(.plain)`
*   `.buttonStyle(.bordered)`
*   `.buttonStyle(.borderedProminent)` (ပုမ်ႇသီလႅင်း ဢၼ်လွင်ႈယႂ်ႇ)
*   `.buttonStyle(.borderless)`

### **3. Haptic Feedback (Sensory Feedback)**
တႃႇတေႁဵတ်းႁႂ်ႈ User ႁူႉလႆႈ မိူဝ်ႈၽွင်းၼဵၵ်းတုမ်ႇ (Feel) ၼၼ်ႉ ႁဝ်းၸႂ်ႉ `.sensoryFeedback` modifier ယဝ်ႉ။ Feedback ၼႆႉ မီးၼင်ႇတီႈတႂ်ႈယဝ်ႉ:
*   `.success`: သၼ်ႇလႅတ်း (မိူၼ်ၼင်ႇ  uku Pay တႃႇပၼ်ငိုၼ်းယဝ်ႉ)။
*   `.error`: သၼ်ႇႁႅင်း 3 ၵမ်း (မိူၼ်ၼင်ႇ တႅမ်ႈ Password ၽိတ်း)။
*   `.selection`: သၼ်ႇမဝ်မဝ် (မိူၼ်ၼင်ႇ မိူဝ်ႈႁဝ်းပၼ်ႇ Picker)။
*   `.impact`: သၼ်ႇမိူၼ်မီးလွင်ႈတုမ်ႉတိူဝ်ႉ (Light, Medium, Heavy)။

---

### **4. Example Code: Interactive Buttons & Haptics**

```swift
import SwiftUI

struct ButtonHapticView: View {
    @State private var successCount = 0
    @State private var hasError = false
    @State private var triggerSuccess = false
    @State private var triggerError = false
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Success Count: \(successCount)")
                .font(.title)
            
            // 1. Success Button
            Button(action: {
                successCount += 1
                triggerSuccess.toggle() // Trigger haptic
            }) {
                Label("Add Success", systemName: "checkmark.circle.fill")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
            // သႂ်ႇ Haptic မိူဝ်ႈ triggerSuccess လႅၵ်ႈလၢႆႈ
            .sensoryFeedback(.success, trigger: triggerSuccess)
            
            // 2. Error Button
            Button(action: {
                triggerError.toggle()
            }) {
                Label("Trigger Error", systemName: "exclamationmark.octagon.fill")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .tint(.red)
            // သႂ်ႇ Haptic တႃႇ Error
            .sensoryFeedback(.error, trigger: triggerError)
            
            // 3. Impact Button (Light)
            Button("Light Tap") {
                // ႁဝ်းၸၢင်ႈၸႂ်ႉ Variable လဵဝ်ၵၼ် တႃႇ Trigger ၵေႃႈလႆႈ
            }
            .buttonStyle(.bordered)
            .sensoryFeedback(.impact(weight: .light), trigger: successCount)
        }
        .padding()
    }
}
```

---

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈႁဵၼ်း)**

| Feature | Explanation (Shan) |
| :--- | :--- |
| **Button Action** | တီႈတႅမ်ႈ Logic ဢၼ်တေႁဵတ်းၵၢၼ် မိူဝ်ႈ User ၼဵၵ်း။ |
| **Button Label** | တီႈတႅမ်ႈ UI ၶွင်ပုမ်ႇ (Text/Image)။ |
| **ButtonStyle** | လၢႆးလိူၵ်ႈႁၢင်ႈၽၢင်ပုမ်ႇ ဢၼ် SwiftUI မီးဝႆႉပၼ်ယဝ်ႉ။ |
| **Sensory Feedback** | လၢႆးသင်ႇႁႂ်ႈ iPhone သၼ်ႇ (Haptic) ၸွမ်းလွင်ႈတူင်ႉၼိုင်။ |
| **Trigger Value** | Haptic တေႁဵတ်းၵၢၼ် ၵူႈပွၵ်ႈဢၼ် Value တီႈ trigger လႅၵ်ႈလၢႆႈ။ |

---