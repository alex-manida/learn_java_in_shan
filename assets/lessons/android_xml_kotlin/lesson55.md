

## **Lesson 55: The CRUD Operations (UI Logic)**

### **1. Create (ၵၢၼ်သၢင်ႈၶေႃႈမုၼ်းမႂ်ႇ)**

မိူဝ်ႈၵူၼ်းၸႂ်ႉတႅမ်ႈတူဝ်ၼပ်ႉ လႄႈ ၸိုဝ်ႈသဵင်ယဝ်ႉ သေ တဵၵ်းပုမ်ႇ **"Save"** ၼၼ်ႉ App ႁဝ်းလူဝ်ႇႁဵတ်းၼင်ႇၼႆ:

* ႁပ်ႉဢဝ်လိၵ်ႈတီႈ `EditText`။
* ပိၼ်ႇမၼ်းပဵၼ် Object `Expense` (Entity)။
* သင်ႇ ViewModel ႁႂ်ႈ `insert()` ၶဝ်ႈ Database ၶႃႈ။

> **Tip:** ယႃႇလိုမ်းၵူတ်ႇထတ်း (Validate) ဝႃႈ ၵူၼ်းၸႂ်ႉတႅမ်ႈလိၵ်ႈဝႆႉတႄႉယူႇႁိုဝ် ၵွၼ်ႇတေသိမ်းၼႃၶႃႈ။

---

### **2. Read (ၵၢၼ်ဢၢၼ်ႇ လႄႈ ၼႄၶေႃႈမူၼ်း)**

ၼႆႉပဵၼ်တွၼ်ႈဢၼ်ငၢႆႈသုတ်း ယွၼ်ႉႁဝ်းၸႂ်ႉ **LiveData** ဝႆႉယဝ်ႉ။

* ၼႂ်း Activity/Fragment, ႁဝ်းတေ `observe` (ပႂ်ႉတူၺ်း) LiveData ဢၼ်လုၵ်ႉမႃးတီႈ ViewModel။
* မိူဝ်ႈမီးၶေႃႈမုၼ်းလႅၵ်ႈလၢႆႈၼၼ်ႉ ႁဝ်းသူင်ႇ List မႂ်ႇၼၼ်ႉၵႂႃႇၸူး **RecyclerView Adapter** ယဝ်ႉ။

---

### **3. Update (ၵၢၼ်မႄးၶေႃႈမူၼ်းၵဝ်ႇ)**

မိူဝ်ႈၵူၼ်းၸႂ်ႉတဵၵ်း (Click) ၼိူဝ်ထႅဝ် (Row) ဢၼ်ၼိုင်ႈၼၼ်ႉ ႁဝ်းတေ:

* သူင်ႇၶေႃႈမူၼ်းတူဝ်ၼၼ်ႉ ၵႂႃႇၸူးၼႃႈၸေႃး "Edit" (ၸၢင်ႈၸႂ်ႉ Intent ဢမ်ႇၼၼ် Navigation Component)။
* မိူဝ်ႈၶဝ်မႄးယဝ်ႉယဝ်ႉၼၼ်ႉ ႁဝ်းႁွင်ႉ `viewModel.update(expense)`။
* **Important:** တႃႇတေ Update လႆႈၼၼ်ႉ Object ၼၼ်ႉလူဝ်ႇမီး **Primary Key (ID)** တူဝ်ၵဝ်ႇမၼ်းပႃးၸွမ်း တႃႇလၢတ်ႈၼႄ Room ဝႃႈ တေလူဝ်ႇမႄးထႅဝ်လႂ် ၼႆယဝ်ႉ။

---

### **4. Delete (ၵၢၼ်ယႃႉၶေႃႈမူၼ်း)**

လၢႆးယႃႉဢၼ်ၵူၼ်းၸႂ်ႉသူင်လိူဝ်ပိူၼ်ႈၵေႃႈပဵၼ် **"Swipe-to-Delete"** (ပၢၵ်ႈသေယႃႉ) ယဝ်ႉ။

* ႁဝ်းတေၸႂ်ႉ **`ItemTouchHelper`** တႃႇၵွင်ႉၸူး RecyclerView ယဝ်ႉ။
* မိူဝ်ႈၵူၼ်းၸႂ်ႉပၢၵ်ႈ (Swipe) ၼၼ်ႉ ႁဝ်းတေဢဝ် Position ၼၼ်ႉမႃးႁႃ Object `Expense` ယဝ်ႉသင်ႇ `viewModel.delete(expense)` ယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code တွၼ်ႈတႃႇ Delete:**

```kotlin
val itemTouchHelperCallback = object : ItemTouchHelper.SimpleCallback(0, ItemTouchHelper.LEFT) {
    override fun onSwiped(viewHolder: RecyclerView.ViewHolder, direction: Int) {
        val position = viewHolder.adapterPosition
        val expenseToDelete = adapter.getExpenseAt(position)
        viewModel.delete(expenseToDelete)
        Toast.makeText(context, "ယႃႉပႅတ်ႉယဝ်ႉၶႃႈ", Toast.LENGTH_SHORT).show()
    }
}

```

---

### **Advice for Students**

'မိူဝ်ႈၸဝ်ႈၵဝ်ႇယႃႉ (Delete) ၶေႃႈမုၼ်းၼၼ်ႉ၊ မၼ်းတေႁၢႆၵႂႃႇ "တေႃႇၸူဝ်ႈ" (Permanently) ယဝ်ႉ။' 
ၵွပ်ႈၼၼ် တွၼ်ႈတႃႇႁႂ်ႈ App ႁဝ်းလီလိူဝ်ပိူၼ်ႈၼၼ်ႉ ႁႂ်ႈၸႂ်ႉ **SnackBar** ဢၼ်မီးပုမ်ႇ **"Undo"** (ၶိုၼ်းဢဝ်) ပႃးၸွမ်း တႃႇႁႄႉၵင်ႈ မိူဝ်ႈၵူၼ်းၸႂ်ႉတဵၵ်းၽိတ်းလႄႈ!"