

## **Module 8 | Lesson 60: DatePickers and ColorPickers**

### **1. DatePicker (တူဝ်လိူၵ်ႈဝၼ်းတီႈ)**

ၸႂ်ႉတႃႇႁပ်ႉၶေႃႈမုၼ်း ဝၼ်းတီႈ (Date) လႄႈ ၶိင်ႇယၢမ်း (Time) ယဝ်ႉ။ 
ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ တေလိူၵ်ႈ "ဝၼ်း" လၢႆလၢႆၵူၺ်း ဢမ်ႇၼၼ် "ၶိင်ႇယၢမ်း" လၢႆလၢႆၵူၺ်း ဢမ်ႇၼၼ်ၵေႃႈ တင်းသွင်လွင်ႈ လႆႈၵွၼ်ႇယဝ်ႉ။

* **Styles:** `.graphical` (ၼႄပဵၼ်ပၵ်းယဵမ်ႈဝၼ်း/Calendar), `.compact` (ပဵၼ်ပုမ်ႇလဵၵ်ႉလဵၵ်ႉ), `.wheel` (ပၼ်ႇလိူၵ်ႈ)။
* **Ranges:** ႁဝ်းၸၢင်ႈမၵ်းမၼ်ႈလႆႈဝႃႈ ႁႂ်ႈလိူၵ်ႈလႆႈ ဝၼ်းဢၼ်တေမႃး (Future) ဢမ်ႇၼၼ် ဝၼ်းဢၼ်ပူၼ်ႉၵႂႃႇ (Past) ၼႆယဝ်ႉ။

### **2. ColorPicker (တူဝ်လိူၵ်ႈသီ)**

ၸႂ်ႉတႃႇပၼ် User လိူၵ်ႈသီ ၸွမ်းၼင်ႇ ၵၢင်ၸႂ်ၶဝ်ယဝ်ႉ။ မၼ်းတေမီး Panel တႃႇလိူၵ်ႈသီလႆႈလလၢႆလၢႆလၢႆးယဝ်ႉ (Grid, Spectrum, Sliders)။

---

### **3. Example Code: Event Planner Form**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်သၢင်ႈ Form တႃႇဝၢင်းၽႅၼ်ပၢင်ၵုမ် (Meeting) ၶႃႈ:

```swift
import SwiftUI

struct EventPlannerView: View {
    @State private var eventDate = Date()
    @State private var themeColor = Color.blue
    
    // မၵ်းမၼ်ႈ Range: လိူၵ်ႈလႆႈ ဝၼ်းမိူဝ်ႈၼႆႉ ၵႂႃႇဝၼ်းၼႃႈ ၵူၺ်း
    var dateRange: ClosedRange<Date> {
        let min = Date()
        let max = Calendar.current.date(byAdding: .year, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Event Timing")) {
                    // 1. DatePicker (လိူၵ်ႈတင်း ဝၼ်း လႄႈ ၶၢဝ်းယၢမ်း)
                    DatePicker(
                        "Start Date",
                        selection: $eventDate,
                        in: dateRange,
                        displayedComponents: [.date, .hourAndMinute]
                    )
                    .datePickerStyle(.compact)
                }
                
                Section(header: Text("UI Customization")) {
                    // 2. ColorPicker (တႃႇလိူၵ်ႈသီ App)
                    ColorPicker("Theme Color", selection: $themeColor)
                }
                
                Section(header: Text("Preview")) {
                    HStack {
                        Text("Event Theme")
                        Spacer()
                        Circle()
                            .fill(themeColor)
                            .frame(width: 30, height: 30)
                    }
                }
            }
            .navigationTitle("TMK Planner")
        }
    }
}

```

---

### **4. Advanced Usage (လၢႆးၸႂ်ႉၸၼ်ႉသုင်)**

* **Graphical Style:** သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈလႆႈ Calendar ယႂ်ႇယႂ်ႇဝႆႉၼႂ်း Form၊ ၸႂ်ႉ `.datePickerStyle(.graphical)` လႄႈ။ မၼ်းတေတူၺ်းႁၼ်လႆႈငၢႆႈ ၵူၺ်းၵႃႈၵိၼ်တီႈယူႇၼမ်။
* **Components:** သင်ၶႂ်ႈလိူၵ်ႈဝၼ်းၵိူတ်ႇ (Birthday) ၵူၺ်းၼႆ ၸႂ်ႉ `displayedComponents: [.date]` တႃႇတတ်းလွင်ႈလိူၵ်ႈ "ၶိင်ႇယၢမ်း" ဢွၵ်ႇပႅတ်ႈလႄႈ။

---

### **Summary**

| Picker | Core Feature (Shan) | Key Benefit                                            |
| --- | --- |--------------------------------------------------------|
| **DatePicker** | ႁပ်ႉ Date/Time ၸွမ်းပိူင် Calendar။ | လူတ်းယွမ်းလွင်ႈတႅမ်ႈဝၼ်းၽိတ်း (Format Error)။          |
| **ColorPicker** | လိူၵ်ႈသီလႆႈၵူႈမဵဝ်း ၸွမ်းၼင်ႇသၢႆတႃႁၼ်။ | ၸွႆႈႁႂ်ႈ App မီးလွင်ႈ Personalization (ၸွမ်းၸႂ် User)။ |

---