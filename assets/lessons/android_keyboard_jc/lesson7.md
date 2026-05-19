

## Lesson 7: Handling Configuration Changes and Window Resizing

မိူဝ်ႈၽူႈၸႂ်ႉတိုဝ်း ပိၼ်ႇၼႃႈၸေႃးၾူၼ်း ၶဝ်ႈၵႂႃႇၼႂ်း Landscape Mode ၼၼ်ႉ ပိုၼ်ႉတီႈၼႃႈၸေႃး ၽၢႆႇတင်ႈ တေယႂ်ႇမႃးႁႅင်းတေႉ။
သင်ဝႃႈ Keyboard ႁဝ်း တိုင်ၵုမ်းဝႆႉ သႅၼ်းသုင် `260.dp` မိူၼ်ၵဝ်ႇၼႆ မၼ်းတေၵႂႃႇပိတ်းပႅတ်ႈ ၼႃႈၸေႃး App တင်းသဵင်ႈ လႄႈ User တေဢမ်ႇႁၼ်လိၵ်ႈ ဢၼ်ၶဝ်တႅမ်ႈဝႆႉယဝ်ႉ။

ၵွပ်ႈၼၼ်လႄႈ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ `Configuration` တႃႇၵုမ်းထိင်း လွင်ႈလႅၵ်ႈလၢႆႈ သႅၼ်းသုင် Keyboard ႁဝ်း ႁႂ်ႈမၼ်း Dynamic (လႅၵ်ႈလၢႆႈၸွမ်းပိူင်) ယဝ်ႉ။

---

### 1. ၵၢၼ်မႄးထႅမ် Code ၼႂ်း `MaoKeyboardService`

ႁဝ်းတေၸႂ်ႉ Callback `onConfigurationChanged()` ၶွင် Android System တႃႇမႃးထတ်းသၢင်ႈ လွင်ႈပိၼ်ႇၼႃႈၸေႃး လႄႈ ၸႂ်ႉ `MutableState` ၼႂ်း Compose တႃႇတႅၼ်းပၼ် သႅၼ်းသုင် ၼင်ႇၼႆယဝ်ႉ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.content.res.Configuration
import android.view.View
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.unit.dp

class MaoKeyboardService : InputMethodService(), 
    LifecycleOwner, ViewModelStoreOwner, SavedStateRegistryOwner {

    // 1. သၢင်ႈ State တႃႇၵုမ်းထိန်း သႅၼ်းသုင် Keyboard (Default ပဵၼ် 260.dp)
    private val keyboardHeight = mutableStateOf(260.dp)

    override fun onCreateInputView(): View {
        val composeView = ComposeView(this)
        bindWithViewTree(composeView)
        
        // ၵုမ်းတူၺ်း Orientation ၸိူၼ်းစတင် ႁႂ်ႈတႅတ်ႈတေႃး ဢွၼ်တၢင်းသုတ်း
        updateKeyboardHeight(resources.configuration)

        composeView.setContent {
            // ၸႂ်ႉ keyboardHeight.value ၵႂႃႇပၼ် Modifier.height() ၵမ်းသိုဝ်ႈ
            KeyboardRootLayout(height = keyboardHeight.value) {
                // ၼႃႈတီႈ ၶီးပွတ်ႇ (ႁဝ်းတေတႅမ်ႈၼႂ်း Module 2)
            }
        }
        return composeView
    }

    // 2. Callback မိူဝ်ႈ System မီးလွင်ႈပိၼ်ႇၼႃႈၸေႃး (Orientation Change)
    override fun onConfigurationChanged(newConfig: Configuration) {
        super.onConfigurationChanged(newConfig)
        // ႁွင်ႉ Method တႃႇလႅၵ်ႈလၢႆႈ သႅၼ်းသုင် Keyboard State
        updateKeyboardHeight(newConfig)
    }

    /**
     * Method တႃႇၵုမ်းထတ်း လႄႈ လႅၵ်ႈလၢႆႈ သႅၼ်းသုင်ၸွမ်း Orientation
     */
    private fun updateKeyboardHeight(config: Configuration) {
        if (config.orientation == Configuration.ORIENTATION_LANDSCAPE) {
            // သင်ပဵၼ် ၼႃႈၸေႃးၼွၼ်း (Landscape) ႁႂ်ႈသုင်ၵူၺ်း 160.dp ပေႃးယဝ်ႉ
            keyboardHeight.value = 160.dp
        } else {
            // သင်ပဵၼ် ၼႃႈၸေႃးတင်ႈ (Portrait) ႁႂ်ႈသုင် 260.dp မိူၼ်ၵဝ်ႇ
            keyboardHeight.value = 260.dp
        }
    }
}

```

---

### 2. ၶေႃႈသပ်းလႅင်း (Breakdown) လွင်ႈႁဵတ်းၵၢၼ် Code

* **`mutableStateOf(260.dp)`**: ၼႆႉပဵၼ် Compose State ယဝ်ႉ။ မိူဝ်ႈႁဝ်းၵႂႃႇလႅၵ်ႈလၢႆႈ တူဝ်ၼပ်ႉ (Value) မၼ်း ၼႂ်း Method `updateKeyboardHeight` ၼၼ်ႉ Jetpack Compose တေႁပ်ႉႁူႉၵမ်းသိုဝ်ႈသေ တေႁဵတ်း **Recomposition** (တႅမ်ႈ UI ၶိုၼ်း) တႃႇလႅၵ်ႈလၢႆႈ သႅၼ်းသုင် Keyboard ၼႂ်းၼႃႈၸေႃး ၵမ်းသိုဝ်ႈ ႁင်းမၼ်းလူၺ်ႈ ဢမ်ႇလူဝ်ႇ Restart Service ယဝ်ႉ။
* **`onConfigurationChanged()`**: ပဵၼ် Callback ဢၼ် Android System တေလႅၼ်ႈမႃးႁွင်ႉၸႂ်ႉ ၵူႈပွၵ်ႈ မိူဝ်ႈ User ပိၼ်ႇၼႃႈၸေႃး ဢမ်ႇၼၼ် မိူဝ်ႈပိုတ်ႇၸႂ်ႉ Multi-window Mode (Split Screen) ယဝ်ႉ။

---

### 3. ၶေႃႈထတ်းသၢင်ႈ (Core Takeaways)

* ၵၢၼ်တႅမ်ႈ Keyboard ၼၼ်ႉ လူဝ်ႇလႆႈႁပ်ႉႁူႉ လွင်ႈလႅၵ်ႈလၢႆႈ သႅၼ်းသုင် ၼႃႈၸေႃး လႄႈ ဢမ်ႇလူဝ်ႇပၼ်မၼ်း ၵိၼ်ပိုၼ်ႉတီႈ ၼႃႈၸေႃး Landscape ၼမ်။
* ၸႂ်ႉ `MutableState` ၼႂ်း Service Context ၼႆႉ ၸွႆႈႁႂ်ႈ ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း လႅၵ်ႈလၢႆႈ သႅၼ်းသုင် ၶဝ်ႈၵႂႃႇၼႂ်း Compose Layer မၼ်းငၢႆႈ လႄႈ ၽတ်ႉၽႅဝ်း (Smooth) တႄႉတႄႉယဝ်ႉ။

---

