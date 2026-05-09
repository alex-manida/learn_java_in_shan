

## **Module 7 | Lesson 55: Handling Preview Data for SwiftData Models**

### **1. ၵွပ်ႈသင်ႁဝ်းလူဝ်ႇ Preview Container?**

App ထမ်ႇမတႃႇၼႆႉ ၶဝ်တေၵဵပ်း Data ဝႆႉၼႂ်း Disk (Storage) ၵူၺ်း။ ၵူၺ်းၵႃႈ တႃႇ Preview ႁဝ်းၶႂ်ႈလႆႈ:

* **In-Memory Storage:** ႁႂ်ႈမၼ်းၵဵပ်းဝႆႉၼႂ်း RAM ၵူၺ်း။ ပေႃးပိၵ်ႉ Xcode ၵေႃႈ ႁႂ်ႈမၼ်းႁၢႆပႅတ်ႈ (ဢမ်ႇသုၵ်ႉသၵ်ႉၸူး Data တေႉ)။
* **Sample Data:** မီး Task လၢႆလၢႆဢၼ် ဢွၵ်ႇမႃးၼႄၵမ်းလဵဝ် တႃႇတူၺ်းဝႃႈ UI ႁဝ်းႁၢင်ႈလီႁႃႉ။

### **2. ၵၢၼ်သၢင်ႈ Preview Container**

ႁဝ်းတေၸႂ်ႉ `ModelConfiguration(isStoredInMemoryOnly: true)` တႃႇသင်ႇဝႃႈ ယႃႇပေ Save လူင်း Disk ၶႃႈ။

---

### **3. Example Code: Preview Manager**

ႁဝ်းတေသၢင်ႈ `MainActor` တႃႇၸွႆႈထႅမ်ၵၢၼ်သၢင်ႈ Data ပွမ်ၶႃႈ:

```swift
import Foundation
import SwiftData

@MainActor
struct PreviewSampleData {
    // 1. သၢင်ႈ Container ဢၼ်ၵဵပ်းဝႆႉၼႂ်း RAM ၵူၺ်း
    static let container: ModelContainer = {
        do {
            let config = ModelConfiguration(isStoredInMemoryOnly: true)
            let container = try ModelContainer(for: TodoTask.self, configurations: config)
            
            // 2. ထႅမ် Data ပွမ် (Mock Data) ၶဝ်ႈၵႂႃႇၵမ်းလဵဝ်
            let sampleTasks = [
                TodoTask(title: "Learn SwiftUI Animation", isCompleted: true),
                TodoTask(title: "Master SwiftData Previews", isCompleted: false),
                TodoTask(title: "Update TMK App Logo", isCompleted: false)
            ]
            
            for task in sampleTasks {
                container.mainContext.insert(task)
            }
            
            return container
        } catch {
            fatalError("Failed to create preview container")
        }
    }()
}

```

### **4. ၵၢၼ်ၸႂ်ႉတိုဝ်းၼႂ်း SwiftUI Preview**

မိူဝ်ႈႁဝ်းတႅမ်ႈ `#Preview` ႁဝ်းၵူၺ်းလူဝ်ႇသႂ်ႇ `.modelContainer` ဢၼ်ႁဝ်းသၢင်ႈဝႆႉၼၼ်ႉၶႃႈ:

```swift
#Preview {
    TodoListView()
        // သူင်ႇ Preview Container ၶဝ်ႈၵႂႃႇတႅၼ်း တူဝ်တေႉ
        .modelContainer(PreviewSampleData.container)
}

```

---

### **5. Summary: Previews with Relationships**

သင် Model ႁဝ်းမီး Relationship (မိူၼ်ၼင်ႇ Project & Tasks) ၼႆ ၼႂ်း Preview Manager ၼၼ်ႉ ႁဝ်းလူဝ်ႇသၢင်ႈတင်း Project လႄႈ Tasks သေၵွင်ႉၵၼ်ဝႆႉႁင်းၵူၺ်း ၸင်ႇတေႁၼ် Data တင်းမူတ်းၼိူဝ် Preview ၶႃႈ။

| Step | Action (Shan) | Purpose                                          |
| --- | --- |--------------------------------------------------|
| **In-Memory** | `isStoredInMemoryOnly: true` | ယႃႇႁႂ်ႈ Data ပွမ် ၵႂႃႇလေႃးၸူး Data တေႉ။ |
| **Insert** | `container.mainContext.insert()` | ထႅမ်ၶေႃႈမုၼ်းတူဝ်ယၢင်ႇ ႁႂ်ႈ UI ဢမ်ႇပဝ်ႇ။         |
| **Inject** | `.modelContainer(container)` | သူင်ႇ Data ၶဝ်ႈၸူး View တႃႇၼႄၽွၼ်းၵၢဝ်။          |

---