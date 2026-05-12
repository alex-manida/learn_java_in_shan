

## **Lesson 38: State Management**

### **1. Defining App State (ၵၢၼ်တတ်းသႅၼ်းငဝ်းလၢႆး)**

မိူဝ်ႈႁဝ်းႁွင်ႉၶေႃႈမုၼ်းမႃးတီႈ Internet ဢမ်ႇၼၼ် Database ၼၼ်ႉ မၼ်းတေဢမ်ႇမႃးၵမ်းလဵဝ်ၶႃႈ။
ႁဝ်းလူဝ်ႇမီးလၢႆးလၢတ်ႈၼႄ ၵူၼ်းၸႂ်ႉဝႃႈ တေႃႈလဵဝ် ပဵၼ်သင်ဝႆႉယူႇ ၼႆယဝ်ႉ။ ႁဝ်းၵႆႉၸႅၵ်ႇငဝ်းလၢႆးဢွၵ်ႇပဵၼ်:

* **Loading:** ၼႄပုမ်ႇမူၼ်း (ProgressBar) သေ ပိၵ်ႉပုမ်ႇတဵၵ်းဝႆႉ။
* **Success:** သိမ်း ProgressBar ပႅတ်ႈသေ ၼႄၶေႃႈမုၼ်းဢၼ်တေႉ။
* **Error:** ၼႄလိၵ်ႈပၼ်ၾၢင်ႉ (မိူၼ်ၼင်ႇ "Internet ဢမ်ႇလီ") လႄႈ ပုမ်ႇ "Try Again"။

---

### **2. Updating the UI with a Single LiveData**

လၢႆးဢၼ် "ၵူၼ်းၸႂ်ႉၼမ်" ၵၢၼ်သၢင်ႈ Class ၼိုင်ႈဢၼ် တႃႇႁေႃႇ (Wrap) ငဝ်းလၢႆးတင်းမူတ်းဝႆႉၼႂ်း **LiveData** တူဝ်လဵဝ်ယဝ်ႉ။

#### **A. သၢင်ႈ Sealed Class (တွၼ်ႈတႃႇတတ်းသႅၼ်းငဝ်းလၢႆး):**

```kotlin
sealed class UIState {
    object Loading : UIState()
    data class Success(val data: String) : UIState()
    data class Error(val message: String) : UIState()
}

```

#### **B. ၼႂ်း ViewModel:**

```kotlin
class StockViewModel : ViewModel() {
    private val _status = MutableLiveData<UIState>()
    val status: LiveData<UIState> get() = _status

    fun fetchData() {
        _status.value = UIState.Loading
        // ၸမ်းႁဵတ်းၵၢၼ် (Mock Task)
        if (isSuccess) {
            _status.value = UIState.Success("Stock Price: $150")
        } else {
            _status.value = UIState.Error("Network Failed!")
        }
    }
}

```

---

### **3. Handling State in the UI (Activity/Fragment)**

ၼႂ်း Fragment, ႁဝ်းတေပႂ်ႉတူၺ်း (Observe) `status` တူဝ်လဵဝ်ၵူၺ်း၊ ယဝ်ႉၸင်ႇတတ်းသႅၼ်းဝႃႈ တေၼႄ Views တူဝ်လႂ်ယဝ်ႉ:

```kotlin
viewModel.status.observe(viewLifecycleOwner) { state ->
    when (state) {
        is UIState.Loading -> {
            binding.progressBar.visibility = View.VISIBLE
            binding.btnRefresh.isEnabled = false
        }
        is UIState.Success -> {
            binding.progressBar.visibility = View.GONE
            binding.txtResult.text = state.data
            binding.btnRefresh.isEnabled = true
        }
        is UIState.Error -> {
            binding.progressBar.visibility = View.GONE
            Toast.makeText(context, state.message, Toast.LENGTH_SHORT).show()
            binding.btnRefresh.isEnabled = true
        }
    }
}

```

---

### **Advice for Students:**

'ၵၢၼ်ၸတ်ႉၵၢၼ်ငဝ်းလၢႆး (State Management) လမ်ႇလွင်ႈၼႃႇ တွၼ်ႈတႃႇ **User Experience (UX)** ၶႃႈ။' 
သင် App ႁဝ်းတိုၵ်ႉ Loading ယူႇ ၵူၺ်းၵႃႈ ဢမ်ႇၼႄသင်ပၼ်ၵူၼ်းၸႂ်ႉၸိုင် ၵူၼ်းၸႂ်ႉတေဝူၼ်ႉဝႃႈ App ႁဝ်း "ၶမ်" (Frozen) သေ 
ၸၢင်းမေႃပိၵ်ႉ App ႁဝ်းပႅတ်ႈၵမ်းလဵဝ်ၶႃႈ။ ႁဝ်းလူဝ်ႇလၢတ်ႈၼႄၶဝ်တႃႇသေႇဝႃႈ App ႁဝ်းတိုၵ်ႉႁဵတ်းသင်ယူႇ ၼႆၶႃႈ!"

