

## **Lesson 39: Repository Pattern (The Data Manager)**

### **1. The "Middleman" (ၵူၼ်းၵၢင် ၸတ်ႉၵၢၼ်ၶေႃႈမူၼ်း)**

ဝူၼ်ႉတူၺ်းဝႃႈ **ViewModel** ပဵၼ် "ၵူၼ်းႁုင်ၶဝ်ႈ" (Chef) ၼႆလႄႈ။ မၼ်းမီးၼႃႈတီႈ ႁုင်ၶဝ်ႈႁႂ်ႈလီသေ သူင်ႇပၼ် UI။ 
ၵူၺ်းၵႃႈ ၵူၼ်းႁုင်ၶဝ်ႈ ဢမ်ႇလူဝ်ႇလႆႈၵႂႃႇ "ၽုၵ်ႇၶဝ်ႈ" ဢမ်ႇၼၼ် "ၵႂႃႇၵၢတ်ႇ" ႁင်းၵွႆးမၼ်း။

**Repository** ၼႆႉပဵၼ် "ၵူၼ်းၵႂႃႇၵၢတ်ႇ" ယဝ်ႉ:

* မၼ်းမီးၼႃႈတီႈ ၵႂႃႇႁႃၶေႃႈမုၼ်းမႃးပၼ် ViewModel ယဝ်ႉ။
* မၼ်းတေတတ်းသႅၼ်းဝႃႈ: "ဢိၼ်ႇထိူဝ်ႇၼႅတ်ႉ မီးႁိုဝ်? သင်မီး ႁႂ်ႈၵႂႃႇဢဝ်တီႈ **Internet (API)**။ သင်ဢမ်ႇမီး ႁႂ်ႈၵႂႃႇဢဝ်တီႈ **Local DB (Room)** ၼႂ်းၾူၼ်းတႅၼ်း" ၼႆယဝ်ႉ။

---

### **2. Clean Code: Separation of Logic**

ပဵၼ်သင်ႁဝ်းဢမ်ႇတႅမ်ႈ Code ႁွင်ႉ API ၼႂ်း ViewModel ၵမ်းလဵဝ်?

* **ViewModel Focused on UI:** ViewModel ႁဝ်းၼႆႉ ထုၵ်ႇလီမႆႈၸႂ်လွင်ႈ "တေၼႄသင်" (UI State) ၼႆၵူၺ်း။ မၼ်းဢမ်ႇလူဝ်ႇႁူႉလွင်ႈ Code API ဢၼ်သုၵ်ႉယုင်ႈ။
* **Easy Testing:** မိူဝ်ႈႁဝ်းၸႅၵ်ႇ Repository ဢွၵ်ႇၼၼ်ႉ ႁဝ်းၸၢင်ႈၵူတ်ႇထတ်း (Test) လွင်ႈၵၢၼ်ႁွင်ႉၶေႃႈမုၼ်းလႆႈငၢႆႈငၢႆႈ လူၺ်ႈဢမ်ႇလူဝ်ႇပိုတ်ႇၼႃႈၸေႃး App ယဝ်ႉ။
* **Reusability:** သင်ႁဝ်းမီး Fragment လၢႆလၢႆဢၼ် ဢၼ်လူဝ်ႇၸႂ်ႉၶေႃႈမူၼ်း Movie မိူၼ်ၵၼ်ၼႆ ႁဝ်းၵူၺ်းလူဝ်ႇႁွင်ႉၸႂ်ႉ `MovieRepository` တူဝ်လဵဝ်ၵူၺ်းယဝ်ႉ။

---

### **3. Implementation Concept (တူဝ်ယၢင်ႇပၢႆးဝူၼ်ႉ Code)**

#### **A. Repository Class:**

```kotlin
class StockRepository(private val apiService: ApiService, private val db: LocalDatabase) {
    
    // Repository တေတတ်းသႅၼ်းဝႃႈ တေဢဝ်ၶေႃႈမုၼ်းတီႈလႂ်
    fun getStockPrice(symbol: String): LiveData<Double> {
        return if (networkIsAvailable()) {
            apiService.getPriceFromNetwork(symbol)
        } else {
            db.getPriceFromLocal(symbol)
        }
    }
}

```

#### **B. ViewModel:**

```kotlin
class StockViewModel(private val repository: StockRepository) : ViewModel() {
    
    // ViewModel ၵူၺ်းလူဝ်ႇသင်ႇ Repository ဝႃႈ "ဢဝ်ၶေႃႈမူၼ်းမႃးပၼ်ၶႃႈ"
    val price = repository.getStockPrice("AAPL")
}

```

---

### **Advice for Students**

'Repository Pattern ၼႆႉ ႁဵတ်းႁႂ်ႈ App ႁဝ်းၸၢင်ႈႁဵတ်းၵၢၼ်လႆႈ ဢမ်ႇဝႃႈတေမီး Internet ႁိုဝ်ဢမ်ႇမီး ၵေႃႈယဝ်ႉ (Offline Support)။' 
ဝူၼ်ႉတူၺ်းဝႃႈ Repository ပဵၼ် "ၵူၼ်းပႂ်ႉယၢမ်း" (Gatekeeper) ၶွင်ၶေႃႈမုၼ်း ၼႆလႄႈ။ 
ViewModel ဢမ်ႇလူဝ်ႇမႆႈၸႂ်ဝႃႈ ၶေႃႈမုၼ်းမႃးတီႈလႂ်၊ မၼ်းၵူၺ်းလူဝ်ႇ "သင်ႇ" ယဝ်ႉ "ၼႄ" ၵူၺ်းယဝ်ႉ!"