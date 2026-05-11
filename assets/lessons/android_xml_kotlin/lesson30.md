

## **Lesson 230: Layout Managers & Orientations**

### **1. LinearLayoutManager (ၵၢၼ်ၸတ်ႉဝၢင်းသႅၼ်းသိုဝ်ႈ)**

မၼ်းပဵၼ်လွင်ႈမၵ်းမၼ်ႈဝႃႈ ႁဝ်းတေတမ်းဝၢင်း item ၸိူင်ႉႁိုဝ်ၼႆယဝ်ႉ။
* **Vertical (ၶပ်ႉတင်ႈ):** မိူၼ်ၼင်ႇၼႃႈ Chat ၼႂ်း Telegram ဢမ်ႇၼၼ် Facebook Feed ၶႃႈ။
* **Horizontal (ၶပ်ႉၼွၼ်း):** မိူၼ်ၼင်ႇၵၢၼ်လိူၵ်ႈ Story ၼႂ်း Instagram ဢမ်ႇၼၼ် ၵၢၼ်လိူၵ်ႈ Movie Categories ၼႂ်း Netflix ၶႃႈ။

---

### **2. GridLayoutManager (ၵၢၼ်ၸတ်ႉဝၢင်းပဵၼ်လွၵ်း)**

သင်ႁဝ်းၶႂ်ႈၼႄၶေႃႈမုၼ်းလၢႆလၢႆဢၼ် ၼႂ်းၸၼ်ႉလဵဝ်ၵၼ် (မိူၼ်ၼင်ႇ ၼိုင်ႈၸၼ်ႉမီး 2-3 Item) ႁဝ်းၸႂ်ႉ `GridLayoutManager` ယဝ်ႉ။

* **လွင်ႈၸႂ်ႉတိုဝ်း:** ၵႆႉၸႂ်ႉတွၼ်ႈတႃႇၼႃႈ Photo Gallery, ၼႃႈလိူၵ်ႈသိုဝ်ႉၶူဝ်း (E-commerce), ဢမ်ႇၼၼ် ၼႃႈလိူၵ်ႈမိူၼ်ၼင်ႇ (Netflix Browse) ၶႃႈ။
* **Span Count:** ႁဝ်းၸၢင်ႈမၢႆဝႃႈ တေၼႄလၢႆလွၵ်း (မိူၼ်ၼင်ႇ `spanCount = 2`) ၶႃႈ။

---

### **3. StaggeredGridLayoutManager (ၵၢၼ်ၸတ်ႉဝၢင်းသႅၼ်း Pinterest)**

ၼႆႉပဵၼ်လၢႆးဢၼ် "ၵတ်ႉၶႅၼ်ႇ" လိူဝ်ပိူၼ်ႈယဝ်ႉ။ မၼ်းမိူၼ် Grid ၼင်ႇၵဝ်ႇ ၵူၺ်းၵႃႈ Item ၵူႈဢၼ် ဢမ်ႇလူဝ်ႇမီးတၢင်းသုင် မိူၼ်ၵၼ် ၵေႃႈလႆႈယဝ်ႉ။

* **လွင်ႈၸႂ်ႉတိုဝ်း:** မိူၼ်ၼင်ႇ App **Pinterest** ဢမ်ႇၼၼ် App **Notes** ဢၼ်မီးတူဝ်လိၵ်ႈယၢဝ်း ဢမ်ႇပဵင်းၵၼ်ၼၼ်ႉယဝ်ႉ။
* **လွင်ႈလီ:** မၼ်းႁဵတ်းႁႂ်ႈ UI ႁဝ်းတူၺ်းပဵၼ် Dynamic လႄႈ ဢမ်ႇဝၢင်ႇပဝ်ႇ (Gap) ယဝ်ႉ။

---

### **4. တူဝ်ယၢင်ႇ Code (ၵၢၼ်တင်ႈ LayoutManager ၼႂ်း Activity/Fragment)**

```kotlin
// 1. သႅၼ်းတင်ႈ (Vertical List) - Default
binding.recyclerView.layoutManager = LinearLayoutManager(context)

// 2. သႅၼ်းၼွၼ်း (Horizontal List)
binding.recyclerView.layoutManager = LinearLayoutManager(context, LinearLayoutManager.HORIZONTAL, false)

// 3. သႅၼ်းလွၵ်း (Grid - 2 Columns)
binding.recyclerView.layoutManager = GridLayoutManager(context, 2)

```

---

### **Advice for Students**

'ယႃႇလိုမ်းတင်ႈ LayoutManager ၼႃၶႃႈ!' သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈ Adapter ယဝ်ႉလီငၢမ်းယဝ်ႉ ၵူၺ်းၵႃႈ ဢမ်ႇတင်ႈ LayoutManager ပၼ် RecyclerView ၼႆ App တေဢမ်ႇၼႄၶေႃႈမုၼ်းသင် လႄႈ ၼႃႈၸေႃးတေပဝ်ႇဝႆႉၵူၺ်း။
မၼ်းမိူၼ်ၼင်ႇ ႁဝ်းမီးၶေႃႈမူၼ်းယဝ်ႉ ၵူၺ်းၵႃႈ ဢမ်ႇမီးၵူၼ်းမႃးၸတ်ႉဝၢင်းပၼ်ၼၼ်ႉယဝ်ႉ။"