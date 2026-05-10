

## **Module 9 | Lesson 67: Localization (Shan, Burmese, English)**

### **1. ပိူင်ၵၢၼ် String Catalog (.xcstrings)**

ၼႂ်း Xcode Version မႂ်ႇ (15/16) ၼႆႉ Apple ၸႂ်ႉ **String Catalog** ဢၼ်ပဵၼ် File ဢၼ်ၼိုင်ႈ ၵဵပ်းလႆႈၵူႈၽႃႇသႃႇယဝ်ႉ။ 
မၼ်းတေၸွႆႈၵူတ်ႇထတ်းဝႃႈ ၸဝ်ႈၵဝ်ႇပိၼ်ႇ (Translate) လိၵ်ႈယဝ်ႉၵူႈတီႈယဝ်ႉႁႃႉ (Percentage Progress) ၼႆယဝ်ႉ။

### **2. လၢႆး Setup ၼႂ်း Xcode**

1. **ထႅမ်ၽႃႇသႃႇ:** ၵႂႃႇတီႈ **Project Settings** -> **Info** -> **Localizations** -> ၼဵၵ်းပုမ်ႇ **(+)** သေထႅမ်:
* **Burmese** (my)
* **Shan** (shn) - *မၢႆတွင်း: သင်ဢမ်ႇႁၼ်ၼႂ်း List, ၸၢင်ႈတႅမ်ႈသႂ်ႇ "shn" ႁင်းၵူၺ်းလႆႈၶႃႈ။*


2. **သၢင်ႈ String Catalog:** ၼဵၵ်း **Cmd + N** -> ႁႃလိူၵ်ႈ **String Catalog** -> တင်ႈၸိုဝ်ႈဝႃႈ `Localizable.xcstrings`။

---

### **3. ၵၢၼ်တႅမ်ႈ Code ႁႂ်ႈ Support Localization**

ၼႂ်း SwiftUI, ၵမ်ႈၼမ်မၼ်းတေ Localize ပၼ်ႁင်းမၼ်း (Automatic) သင်ႁဝ်းၸႂ်ႉ `String Literal` ၼႂ်း View ယဝ်ႉ။

#### **တူဝ်ယၢင်ႇၼႂ်း View:**

```swift
Text("Hello, Welcome!") // Xcode တေထႅမ်သဵၼ်ႈၼႆႉ ၶဝ်ႈၼႂ်း Catalog ႁင်းမၼ်း

```

#### **တူဝ်ယၢင်ႇၼႂ်း String Catalog (.xcstrings):**

မိူဝ်ႈၸဝ်ႈၵဝ်ႇ Build Project ယဝ်ႉၼၼ်ႉ Xcode တေထႅမ် "Hello, Welcome!" ၶဝ်ႈၼႂ်း File ၼၼ်ႉယဝ်ႉ။
ၸဝ်ႈၵဝ်ႇၵူၺ်းလူဝ်ႇတႅမ်ႈၶေႃႈပိၼ်ႇ (Translations) သႂ်ႇၼင်ႇၼႆ:

| Key | English (Default) | Shan (shn)                      | Burmese (my) |
| --- | --- |---------------------------------| --- |
| **Hello, Welcome!** | Hello, Welcome! | မႂ်ႇသုင်၊ ယိၼ်းၸူမ်းႁပ်ႉယူႇၶႃႈ! | မင်္ဂလာပါ၊ ကြိုဆိုပါတယ်! |
| **Settings** | Settings | ၵၢၼ်မၵ်းမၼ်ႈ                    | ဆက်တင်များ |
| **Save** | Save | သိမ်းဝႆႉ                        | သိမ်းဆည်းရန် |

---

### **4. Localization Features ဢၼ်လူဝ်ႇၾၢင်ႉ**

#### **A. Pluralization (ၵၢၼ်ၼပ်ႉတူဝ်)**

လိၵ်ႈတႆး လႄႈ လိၵ်ႈဢင်းၵိတ်း မီးပိူင်ၼပ်ႉဢၼ်ပႅၵ်ႇၵၼ်ဝႆႉ (မိူၼ်ၼင်ႇ: 1 Task vs 2 Tasks) ယဝ်ႉ။ 
ၼႂ်း String Catalog ၼၼ်ႉ ၸဝ်ႈၵဝ်ႇၸၢင်ႈ Right-click သေလိူၵ်ႈ **"Vary by Plural"** တႃႇမၵ်းမၼ်ႈလိၵ်ႈ ႁႂ်ႈလႅၵ်ႈလၢႆႈၸွမ်းတူဝ်ၼပ်ႉယဝ်ႉ။

#### **B. Layout Adaptation**

* **Font Handling:** လိၵ်ႈတႆး (Shan) လႄႈ လိၵ်ႈမၢၼ်ႈ (Burmese) ၵႆႉမီးတၢင်းသုင် (Line Height) ဢၼ်ယႂ်ႇလိူဝ်လိၵ်ႈဢင်းၵိတ်းယဝ်ႉ။ ႁဝ်းထုၵ်ႇလီၸႂ်ႉ `.lineSpacing()` တႃႇႁႂ်ႈလိၵ်ႈဢမ်ႇထပ်ႉၵၼ်ယဝ်ႉ။
* **Direction:** ပေႃးပဵၼ်လိၵ်ႈတႆး တေလႅၼ်ႈသၢႆႉၵႂႃႇၶႂႃ (LTR) မိူၼ်ဢင်းၵိတ်းယဝ်ႉ။ ၵွပ်ႈၼၼ် UI Layout တေဢမ်ႇလူဝ်ႇမႄးၼမ်။

---

### **5. Preview Localization (ၵၢၼ်ၵူတ်ႇထတ်း)**

ၸဝ်ႈၵဝ်ႇၸၢင်ႈတူၺ်း Preview ၼႂ်း SwiftUI ႁႂ်ႈၼႄပဵၼ်ၽႃႇသႃႇတႆးလႆႈၵမ်းလဵဝ်:

```swift
#Preview {
    ContentView()
        .environment(\.locale, .init(identifier: "shn")) // ၼႄၽွၼ်းပဵၼ်လိၵ်ႈတႆး
}

```

---

### **Summary**

| Task | Tool/Method (Shan)                                                    |
| --- |-----------------------------------------------------------------------|
| **Manage Strings** | ၸႂ်ႉ **String Catalog (.xcstrings)** တႃႇၸတ်းၵၢၼ် လၢႆလၢႆၽႃႇသႃႇ။        |
| **Translation** | ထႅမ်ၶေႃႈပိၼ်ႇ (Shan/Burmese) ၼႂ်းလွၵ်းၽႃႇသႃႇၽႂ်မၼ်း။                  |
| **Locale Support** | ၸႂ်ႉ `.environment(\.locale)` တႃႇလႅၵ်ႈၽႃႇသႃႇၼႂ်း Preview။             |
| **Testing** | ၸႂ်ႉ **Edit Scheme** -> **App Language** တႃႇ Run တူၺ်းၼႂ်း Simulator။ |

---