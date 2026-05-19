

## Lesson 5: Integrating Jetpack Compose into a Traditional Service Context

### 1. လွင်ႈတၢင်းဢၼ်လူဝ်ႇလႆႈ Setup Lifecycle ႁင်းၶေႃ

ၼႂ်းဢႅပ်ႉ ဢၼ်မီးၼႃႈၸေႃး ႁဝ်းၵႆႉၸႂ်ႉ `setContent { ... }` ၼႂ်း `MainActivity` လႆႈၵမ်းသိုဝ်ႈ ယွၼ်ႉဝႃႈ Activity မၼ်းမီး `LifecycleOwner`, `ViewModelStoreOwner`, လႄႈ `SavedStateRegistryOwner` ဝႆႉထႃႈယဝ်ႉ။

ၵူၺ်းၵႃႈ မိူဝ်ႈႁဝ်းတေဢဝ် Compose ၵႂႃႇၸႂ်ႉၼႂ်း `InputMethodService` ဢၼ်ဢမ်ႇမီးပိူင်ၸိူဝ်းၼႆႉ ဝႆႉထႃႈၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈတႅမ်ႈ Code **သၢင်ႈ (Implement) ပၼ် ပိူင်ၸိူဝ်းၼႆႉ ႁင်းၶေႃ** တီႈၼႂ်း Service ႁဝ်းယဝ်ႉ။

---

### 2. ၵၢၼ်တႅမ်ႈ Code Setup Lifecycle ၼႂ်း `MaoKeyboardService`

ႁဝ်းတေမႃးမႄးထႅမ် Code ၼႂ်း ၾၢႆႇ `MaoKeyboardService.kt` ႁႂ်ႈမၼ်းၵုမ်းထိင်း သၢႆၸႂ် Jetpack Compose လႆႈတႅတ်ႈတေႃး ၼင်ႇၼႆယဝ်ႉ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.inputmethodservice.InputMethodService
import android.os.Bundle
import android.view.View
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.ViewModelStoreOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.SavedStateRegistry
import androidx.savedstate.SavedStateRegistryController
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner

class MaoKeyboardService : InputMethodService(), 
    LifecycleOwner, ViewModelStoreOwner, SavedStateRegistryOwner {

    // 1. Setup Lifecycle Registry
    private val lifecycleRegistry = LifecycleRegistry(this)
    override val lifecycle: Lifecycle get() = lifecycleRegistry

    // 2. Setup ViewModel Store
    private val serviceViewModelStore = ViewModelStore()
    override val viewModelStore: ViewModelStore get() = serviceViewModelStore

    // 3. Setup SavedState Registry
    private val savedStateRegistryController = SavedStateRegistryController.create(this)
    override val savedStateRegistry: SavedStateRegistry get() = savedStateRegistryController.savedStateRegistry

    override fun onCreate() {
        // ႁွင်ႉ SavedState ႁႂ်ႈစတင် ႁဵတ်းၵၢၼ် ဢွၼ်တၢင်းသုတ်း
        savedStateRegistryController.performRestore(null)
        super.onCreate()
        
        // ၸိၼႄဝႃႈ Service ၼႆႉ စတင် ပိုတ်ႇ (Created) ယဝ်ႉ
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
    }

    /**
     * ၸႂ်ႉတႃႇၵွင်ႉပၼ် (Bind) Lifecycle Owners ၸိူဝ်းၼႆႉ ၶဝ်ႈၵႂႃႇၼႂ်း View Tree
     * တႃႇႁႂ်ႈ Jetpack Compose ဢၼ်ယူႇၼႂ်း View ၼၼ်ႉ ၸႂ်ႉတိုဝ်းလႆႈ
     */
    protected fun bindWithViewTree(view: View) {
        view.setViewTreeLifecycleOwner(this)
        view.setViewTreeViewModelStoreOwner(this)
        view.setViewTreeSavedStateRegistryOwner(this)
    }

    override fun onWindowShown() {
        super.onWindowShown()
        // မိူဝ်ႈ Keyboard လọၵ်ႇဢွၵ်ႇမႃး ၼႃႈၸေႃး -> ႁႂ်ႈ Lifecycle ပဵၼ် ON_START လႄႈ ON_RESUME
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME)
    }

    override fun onWindowHidden() {
        // မိူဝ်ႈ Keyboard ပိၵ်ႉလႅၼ်ႈၶဝ်ႈၵႂႃႇၽၢႆႇလင် -> ႁႂ်ႈ Lifecycle ပဵၼ် ON_PAUSE လႄႈ ON_STOP
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP)
        super.onWindowHidden()
    }

    override fun onDestroy() {
        // မိူဝ်ႈ System Kill Keyboard -> ႁႂ်ႈ Lifecycle ပဵၼ် ON_DESTROY လႄႈ Clear ViewModel
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        serviceViewModelStore.clear()
        super.onDestroy()
    }
}

```

---

### 3. ၶေႃႈသႅၼ်းၸိၼႄ (Breakdown) လွင်ႈႁဵတ်းၵၢၼ် Code

* **`bindWithViewTree(view: View)`:** ၼႆႉပဵၼ် Method ဢၼ်လွင်ႈယႂ်ႇ သုတ်းယဝ်ႉ။ မၼ်းတေဢဝ် `ComposeView` (ဢၼ်ႁဝ်းတေ သၢင်ႈၼႂ်း Lesson 6) ၼၼ်ႉ မႃးၵွင်ႉၸူးတင်း `LifecycleOwner` ၶွင် Service ႁဝ်းယဝ်ႉ။ သင်ဝႃႈ ဢမ်ႇမီး Method ၼႆႉၼႆ Compose တေဢမ်ႇၸၢင်ႈ လႅၼ်ႈလႆႈ လႄႈ တေမႃးထႅမ် Error ဝႃႈ `ViewTreeLifecycleOwner not found` ယဝ်ႉ။
* **`onWindowShown()` လႄႈ `onWindowHidden()`:** 2 ဢၼ်ၼႆႉ ပဵၼ်တူဝ်ၵုမ်းထိင်း ဝႃႈ မိူဝ်ႈလႂ် Keyboard ၼႄ (Shown) ဢမ်ႇၼၼ် ပိၵ်ႉ (Hidden) ၼႆယဝ်ႉ။ ႁဝ်းလႆႈလႅၵ်ႈလၢႆႈ သၢႆၸႂ် Lifecycle ၸွမ်း ၼင်ႇႁႂ်ႈ Jetpack Compose ႁူႉဝႃႈ ယၢမ်းလဵဝ် ဢမ်ႇလူဝ်ႇလႅၼ်ႈ (Paused) ဢမ်ႇၼၼ် လူဝ်ႇလႅၼ်ႈၶိုၼ်း (Resumed) ၼၼ်ႉယဝ်ႉ။

---

### 4. ၶေႃႈထတ်းသၢင်ႈ (Core Takeaways)

* ၵၢၼ်သၢင်ႈ Keyboard တင်း Jetpack Compose ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈမၼ်ႈၸႂ်ဝႃႈ `ComposeView` မၼ်းမီး Lifecycle Tree ဢၼ်မႅၼ်ႈၸွမ်း ပိူင် System ၼႆယဝ်ႉ။
* ၵၢၼ် Clear `serviceViewModelStore` ၼႂ်း `onDestroy()` မၼ်းၸွႆႈ ႁႄႉၵင်ႈ ဢမ်ႇႁႂ်ႈပဵၼ် Memory Leak ယဝ်ႉ။

---