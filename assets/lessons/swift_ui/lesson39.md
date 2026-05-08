

## **Module 5 | Lesson 39: Task Modifiers and View Life Cycle (.onAppear / .task)**

### **1. .onAppear ပဵၼ်သင်?**

မၼ်းပဵၼ် Modifier ဢၼ်တေႁဵတ်းၵၢၼ် **ၵမ်းလဵဝ်** မိူဝ်ႈ View ၼၼ်ႉ ဢွၵ်ႇမႃးၼိူဝ်ၼႃႈၸေႃးယဝ်ႉ။

* **Usage:** ၸႂ်ႉတႃႇသႂ်ႇၶေႃႈမုၼ်း (Initialize data) ဢမ်ႇၼၼ် သင်ႇႁႂ်ႈ Animation တႄႇႁဵတ်းၵၢၼ်။
* **Limitation:** မၼ်းဢမ်ႇၸႂ်ႉ `async` ဝႆႉ။ သင်တေႁွင်ႉ API ၼႂ်းၼႆႉ လူဝ်ႇလႆႈႁေႃႇဝႆႉၼႂ်း `Task { }` ၶႃႈ။

### **2. .task ပဵၼ်သင်? (The Modern Way)**

မၼ်းပဵၼ် Modifier ဢၼ်မႂ်ႇသေ လႄႈ ၶႅမ်ႉလိူဝ် `.onAppear` တႃႇၸတ်းၵၢၼ် Networking ၶႃႈ။

* **Async Support:** မၼ်းပၼ်သုၼ်ႇႁႂ်ႈႁဝ်းၸႂ်ႉ `await` လႆႈၵမ်းလဵဝ် လူၺ်ႈဢမ်ႇလူဝ်ႇသႂ်ႇ `Task { }` ထႅင်ႈ။
* **Automatic Cancellation:** တွၼ်ႈၼႆႉလွင်ႈယႂ်ႇၼႃႇၶႃႈ! သင် User ပိၵ်ႉ (Dismiss) View ၼၼ်ႉၵႂႃႇၼႆ မၼ်းတိုၵ်ႉတေလူတ်ႇ Data ယူႇၶႃႈ။ SwiftUI တေ **"ယႃႉပႅတ်ႈ" (Cancel)** ၵၢၼ် Networking ၼၼ်ႉႁင်းမၼ်း တႃႇလူတ်းယွမ်းၵၢၼ်ၸႂ်ႉ Memory လႄႈ Internet ၶႃႈ။

---

### **3. Example Code: Life Cycle Comparison**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၸႂ်ႉတိုဝ်း တင်းသွင်မဵဝ်းၶႃႈ:

```swift
import SwiftUI

struct LifeCycleLessonView: View {
    @State private var status = "Waiting..."
    
    var body: some View {
        VStack(spacing: 20) {
            Text(status)
                .font(.title2)
            
            NavigationLink("Go to Next Page", destination: Text("Next Page"))
        }
        // 1. ၸႂ်ႉတႃႇႁဵတ်းၵၢၼ် ငၢႆႈငၢႆႈ မိူဝ်ႈ View ဢွၵ်ႇမႃး
        .onAppear {
            print("View ဢွၵ်ႇမႃးယဝ်ႉၶႃႈ!")
        }
        // 2. ၸႂ်ႉတႃႇႁွင်ႉ API ဢၼ်မီးလွင်ႈပႂ်ႉထႃႈ (Async)
        .task {
            await loadData()
        }
        // 3. ၸႂ်ႉမိူဝ်ႈ User ဢွၵ်ႇၵႂႃႇတီႈၼႃႈၸေႃး
        .onDisappear {
            print("View ႁၢႆၵႂႃႇယဝ်ႉၶႃႈ!")
        }
    }
    
    func loadData() async {
        status = "Loading from TMK Server..."
        try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        status = "Data Ready!"
    }
}

```

---

### **4. Summary: When to use which? (လိူၵ်ႈၸႂ်ႉမိူဝ်ႈလႂ်?)**

| Modifier | Best For (Shan)                                                                           |
| --- |-------------------------------------------------------------------------------------------|
| **.onAppear** | ၵၢၼ်မၵ်းမၼ်ႈ ပၼ်ၵႃႈၶၼ် Variable, Animation, ဢမ်ႇၼၼ် Logic ဢၼ်ဢမ်ႇလူဝ်ႇပႂ်ႉ (Synchronous)။ |
| **.task** | ၵၢၼ်လူတ်ႇ Data တီႈ Internet (API Calls) ဢၼ်လူဝ်ႇ `async/await`။                           |
| **.onDisappear** | ၵၢၼ်ပိၵ်ႉသဵင်, ၵၢၼ်မၵ်းမၼ်ႈ Variable ၶိုၼ်း, ဢမ်ႇၼၼ် ၵၢၼ်မွတ်ႇ Timer။                     |

---