

## **Lesson 52: The DAO (Data Access Object)**

### **1. Defining Actions (ၵၢၼ်မၢႆတွင်း ၵၢၼ်ႁဵတ်းသၢင်ႈ)**

**DAO** ၼႆႉပဵၼ် `interface` ဢၼ်ႁဝ်းတႅမ်ႈမၢႆဝႆႉဝႃႈ ႁဝ်းၶႂ်ႈႁဵတ်းသင်တင်း Database ႁဝ်းလၢႆလၢႆၼႆယဝ်ႉ။ 
Room တေပဵၼ်ၵူၼ်းတႅမ်ႈ Code ၽၢႆႇလင် (Implementation) ပၼ်ႁဝ်းႁင်းၵွႆး ၸွမ်းၼင်ႇ Annotations ၸိူဝ်းၼႆႉယဝ်ႉ:

* **`@Insert`:** တႃႇသႂ်ႇၶေႃႈမုၼ်းမႂ်ႇၶဝ်ႈၵႂႃႇ။
* **`@Update`:** တႃႇမႄးၶေႃႈမုၼ်း ဢၼ်မီးဝႆႉယူႇယဝ်ႉ။
* **`@Delete`:** တႃႇယႃႉၶေႃႈမုၼ်းပႅတ်ႈ။

---

### **2. SQL Queries (ၵၢၼ်တႅမ်ႈၶေႃႈသင်ႇ SQL)**

မၢင်ပွၵ်ႈ ႁဝ်းၶႂ်ႈလႆႈၶေႃႈမုၼ်း ၸွမ်းၼင်ႇ ဢၼ်ႁဝ်းၶႂ်ႈလႆႈႁင်းၵွႆး (မိူၼ်ၼင်ႇ ႁႃၶေႃႈမုၼ်းတင်းမူတ်း ဢမ်ႇၼၼ် ႁႃၸွမ်းၸိုဝ်ႈ) ယဝ်ႉ။ 
သင်ၼၼ် ႁဝ်းတေလႆႈၸႂ်ႉ **`@Query`** သေ တႅမ်ႈလိၵ်ႈ SQL ၵမ်ႈၽွင်ႈယဝ်ႉ:

* **`SELECT * FROM expense_table`**: ပွင်ႇဝႃႈ "ဢဝ်ၶေႃႈမုၼ်းတင်းမူတ်း တီႈပႅၼ်ႈ `expense_table` မႃးၼႄၼႆယဝ်ႉ"။
* **`WHERE id = :id`**: ပွင်ႇဝႃႈ "ႁႃဢဝ်တူဝ်ဢၼ်မီး ID မိူၼ်ၼင်ႇဢၼ်ႁဝ်းသူင်ႇပၼ်ၼၼ်ႉၵူၺ်း" ၼႆယဝ်ႉ။

---

### **3. Returning LiveData (ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း ႁႂ်ႈတူင်ႉၼိုင်)**

မိူဝ်ႈႁဝ်းသင်ႇ `SELECT` ၶေႃႈမုၼ်းၼၼ်ႉ ႁဝ်းၸၢင်ႈ သင်ႇႁႂ်ႈမၼ်း သူင်ႇဢွၵ်ႇပဵၼ် **`LiveData`** လႆႈယဝ်ႉ။

* **ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ?:** ယွၼ်ႉဝႃႈ သင်ႁဝ်းၸႂ်ႉ LiveData ၼႆ ပေႃးမီးၵၢၼ်သႂ်ႇၶေႃႈမုၼ်းမႂ်ႇ ဢမ်ႇၼၼ် ယႃႉၶေႃႈမုၼ်းပႅတ်ႈၼႂ်း Database မိူဝ်ႈလႂ်ၵေႃႈလီ **UI တေလႅၵ်ႈလၢႆႈ (Update) ႁင်းၵွႆး** မိူဝ်ႈၼၼ်ႉယဝ်ႉ! ႁဝ်းဢမ်ႇလူဝ်ႇၵႂႃႇသင်ႇ Refresh ႁင်းၵွႆးထႅင်ႈယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code (ExpenseDao.kt):**

```kotlin
@Dao
interface ExpenseDao {

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insert(expense: Expense)

    @Delete
    suspend fun delete(expense: Expense)

    @Query("SELECT * FROM expense_table ORDER BY id ASC")
    fun getAllExpenses(): LiveData<List<Expense>> // UI တေ Update ႁင်းၵွႆး
}

```

---

### **Advice for Students**

'ယႃႇလိုမ်းသႂ်ႇ **`suspend`** ဝႆႉၽၢႆႇၼႃႈ Function တွၼ်ႈတႃႇ Insert, Update, လႄႈ Delete ၶႃႈၼေႃ!' 
ယွၼ်ႉၵၢၼ်တႅမ်ႈၶေႃႈမုၼ်းလူင်း Disk မၼ်းၸၢင်ႊလႆႈပႂ်ႉႁိုင်လႄႈ ႁဝ်းလူဝ်ႇႁႂ်ႈမၼ်းႁဵတ်းၵၢၼ်ၼႂ်း Background (Coroutines) တႃႇႁႄႉၵင်ႈ App ႁဝ်းၶမ်ၶႃႈယဝ်ႉ။ 
ၵူၺ်းၵႃႈ သင်ပဵၼ် LiveData ၼႆၸိုင် Room တေၸတ်ႉၵၢၼ် Background ပၼ်ႁင်းၵွႆးၼႆလႄႈ ဢမ်ႇလူဝ်ႇသႂ်ႇ suspend ၵေႃႈလႆႈယူႇၶႃႈ!