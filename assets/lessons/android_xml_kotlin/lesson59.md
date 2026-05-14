

## **Lesson 59: Multi-Language Support (Localization)**

### **1. The `strings.xml` Strategy (လွၵ်းလၢႆးသိမ်းလိၵ်ႈ)**

ၼႂ်းၵၢၼ်တႅမ်ႈ App ၼၼ်ႉ ႁဝ်း **ဢမ်ႇထုၵ်ႇလီ** တႅမ်ႈလိၵ်ႈ (မိူၼ်ၼင်ႇ "Hello") သႂ်ႇၼႂ်း Code Kotlin ဢမ်ႇၼၼ် Layout XML ၵမ်းသိုဝ်ႈ (Hardcoding)။

* **ပဵၼ်သင်?:** ယွၼ်ႉဝႃႈ သင်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Code ၼႆ မိူဝ်ႈႁဝ်းၶႂ်ႈလႅၵ်ႈပဵၼ် "မႂ်ႇသုင်ၶႃႈ"ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈၵႂႃႇႁႃမႄး Code တင်းမူတ်းယဝ်ႉ။
* **Solution:** ႁဝ်းတေသိမ်းလိၵ်ႈတင်းမူတ်းဝႆႉၼႂ်း `res/values/strings.xml`။
* *Kotlin:* ၸႂ်ႉ `getString(R.string.welcome_msg)`
* *XML:* ၸႂ်ႉ `@string/welcome_msg`



---

### **2. Adding Locales (ၵၢၼ်ထႅမ်ၽႃႇသႃႇပိုၼ်ႉတီႈ)**

တွၼ်ႈတႃႇထႅမ်ၽႃႇသႃႇတႆး ဢမ်ႇၼၼ် ၽႃႇသႃႇမၢၼ်ႈၼၼ်ႉ ႁဝ်းလူဝ်ႇသၢင်ႈၾၢႆႇ `strings.xml` မႂ်ႇ ဢၼ်မီး "မၢႆတွင်းမိူင်း" (Locale Code) ပႃးၸွမ်းယဝ်ႉ။

**လၢႆးႁဵတ်းၼႂ်း Android Studio:**

1. Right-click တီႈ Folder `values` -> `New` -> `Values Resource File`။
2. ပၼ်ၸိုဝ်ႈဝႃႈ `strings.xml`။
3. တီႈၽၢႆႇသၢႆႉ (Available Qualifiers) ၼၼ်ႉ လိူၵ်ႈ **Locale** သေ တဵၵ်းပုမ်ႇ `>>`။
4. လိူၵ်ႈၽႃႇသႃႇ (မိူၼ်ၼင်ႇ **shn: Shan** ဢမ်ႇၼၼ် **my: Burmese**)။
5. Android Studio တေၸတ်ႉၵၢၼ်သၢင်ႈ Folder `values-shn` ဢမ်ႇၼၼ် `values-my` ပၼ်ႁင်းၵွႆးယဝ်ႉ။

#### **တူဝ်ယၢင်ႇၼႂ်းၾၢႆႇ (values-shn/strings.xml):**

```xml
<resources>
    <string name="app_name">ၽူႈၸတ်ႉၵၢၼ်ငိုၼ်း</string>
    <string name="welcome_msg">မႂ်ႇသုင်ၶႃႈ၊ ႁပ်ႉတွၼ်ႈယူႇၶႃႈ!</string>
    <string name="save_button">သိမ်းဝႆႉ</string>
</resources>

```

---

### **3. Testing Languages (ၵၢၼ်ၵူတ်ႇထတ်း)**

ဝၢႆးသေတႅမ်ႈယဝ်ႉၼၼ်ႉ ႁဝ်းဢမ်ႇလူဝ်ႇမႄး Code သင်ထႅင်ႈယဝ်ႉ။ Android တေၸတ်ႉၵၢၼ်ပၼ်ႁင်းၵွႆးယဝ်ႉ:

* **လၢႆးၸမ်း:** ၵႂႃႇၼႂ်း **Settings** ၶွင်ၾူၼ်း (Emulator) -> **System** -> **Languages** သေ လႅၵ်ႈၽႃႇသႃႇၾူၼ်းႁႂ်ႈပဵၼ် ၽႃႇသႃႇတႆး (Shan) လႄႈ။
* **Result:** ပေႃးပိုတ်ႇ App ႁဝ်းမႃးၼႆ လိၵ်ႈတင်းမူတ်းတေလႅၵ်ႈပဵၼ် ၽႃႇသႃႇတႆး ႁင်းၵွႆး (Automatic) ယဝ်ႉ!

---

### **Advice for Students**

'ၵၢၼ်ၸႂ်ႉ `strings.xml` ၼႆႉ ဢမ်ႇၸႂ်ႈတွၼ်ႈတႃႇ လႅၵ်ႈၽႃႇသႃႇၵူၺ်း၊ မၼ်းယင်းၸွႆးႁႂ်ႈႁဝ်း မႄးလိၵ်ႈလႆႈငၢႆႈငၢႆႈၵွၼ်ႇယဝ်ႉ။' 
ဝူၼ်ႉတူၺ်းဝႃႈ သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉလိၵ်ႈဝႃႈ "Submit" ဝႆႉ 50 တီႈၼႂ်း App ၼႆလႄႈ။ သင်ၸဝ်ႈၵဝ်ႇၶႂ်ႈလႅၵ်ႈပဵၼ် "Send" ၼႆ သင်ၸဝ်ႈၵဝ်ႇၸႂ်ႉ `strings.xml` ဝႆႉၼႆတေႉ 
ၸဝ်ႈၵဝ်ႇၵူၺ်း လူဝ်ႇလႅၵ်ႈတီႈလဵဝ်ၵူၺ်း၊ တင်း 50 တီႈၼၼ်ႉ တေလႅၵ်ႈၸွမ်းၵမ်းလဵဝ်ၶႃႈ!"