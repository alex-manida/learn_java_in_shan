

## Lesson 6: Building the Keyboard Window: Embedding `ComposeView`

ၼႂ်းၵၢၼ်တႅမ်ႈ Android App ပိူင်ၵဝ်ႇၼၼ်ႉ ႁဝ်းၵႆႉၸႂ်ႉ XML ၾၢႆႇ Layout တႃႇၼႄ UI ၼႂ်း `onCreateInputView()` ယဝ်ႉ။ 
ၵူၺ်းၵႃႊ တႃႇတေၸႂ်ႉ **Jetpack Compose** ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈၸႂ်ႉ တူဝ်ၵွင်ႉဢၼ်ၸိုဝ်ႈဝႃႈ **`ComposeView`** ဢၼ်ပဵၼ် Traditional Android `View` သေတႃႉ 
မၼ်းမီးၼႃႈတီႈ ႁပ်ႉႁူႉလႄႈ သၢင်ႈပၼ် ပိုၼ်ႉတီႈတႅမ်ႈ Code Composable ၶႃႈယဝ်ႉ။

---

### 1. ၵၢၼ်မႄးထႅမ် `onCreateInputView()` ၼႂ်း `MaoKeyboardService`

ႁဝ်းတေမႃးပိုတ်ႇၾၢႆႇ `MaoKeyboardService.kt` ၶိုၼ်းသေ မႄးထႅမ်ပၼ် Code ၼႂ်း Callback `onCreateInputView()` ၼင်ႇၼႆၶႃႈ:

```kotlin
package it.saimao.tmkkeyboardpro

import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.material3.Text
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

class MaoKeyboardService : InputMethodService(), 
    LifecycleOwner, ViewModelStoreOwner, SavedStateRegistryOwner {
    
    override fun onCreateInputView(): View {
        // 1. သၢင်ႈ ComposeView လူၺ်ႈ Programmatically
        val composeView = ComposeView(this)
        
        // 2. ၵွင်ႉၸူး (Bind) Lifecycle Tree ဢၼ်ႁဝ်းသၢင်ႈဝႆႉ ၼႂ်း Lesson 5
        bindWithViewTree(composeView)
        
        // 3. သႂ်ႇ Content Jetpack Compose ၶဝ်ႈၵႂႃႇ
        composeView.setContent {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(260.dp) // သႅၼ်းသုင် Keyboard ပိုၼ်ႉထၢၼ်
                    .background(Color(0xFF121212)), // Background သီလမ် (Dark Theme)
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = "မႂ်ႇသူင်ႇၶႃႈ - TMK Keyboard",
                    color = Color.White,
                    fontSize = 20.sp
                )
            }
        }
        
        // 4. Return တူဝ် composeView ဢွၵ်ႇၵႂႃႇပၼ် System Window
        return composeView
    }
}

```

---

### 2. ၶေႃႈသပ်းလႅင်း (Breakdown) လွင်ႈႁဵတ်းၵၢၼ် Code

* **`ComposeView(this)`**: ယွၼ်ႉဝႃႈ ၼႂ်း Service ႁဝ်းဢမ်ႇမီး XML Layout လႄႈ ႁဝ်းၸင်ႇသၢင်ႈ `ComposeView` ၼႂ်း Memory ယဝ်ႉ။
* **`bindWithViewTree(composeView)`**: ၼႆႉပဵၼ် Method ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼႂ်း Lesson 5 ယဝ်ႉ။ မၼ်းတေဢဝ် Lifecycle ၵႂႃႇပၼ် `composeView` ဢွၼ်တၢင်း ပႆႇတေႇ `setContent` ယဝ်ႉ။ သင်ဝႃႈ ဢမ်ႇသႂ်ႇတူဝ်ၼႆႉသေ ၵႂႃႇသူင်ႇ `setContent` ၵမ်းသိုဝ်ႈၼႆ ဢႅပ်ႉတေ Crash ၵမ်းသိုဝ်ႈယဝ်ႉ။
* **`Modifier.height(260.dp)`**: ၼႂ်းၵၢၼ်တႅမ်ႈ Keyboard ၼၼ်ႉ သႅၼ်းသုင် (Height) ၶွင် Root Composable (ၼႂ်း Code ၼႆႉပဵၼ် `Box`) မၼ်းပဵၼ် တူဝ်တေၵႂႃႇမၢႆဝႆႉဝႃႈ Keyboard ႁဝ်း တေၵႂႃႇၵိၼ်ပိုၼ်ႉတီႈ တီႈၼႃႈၸေႃး (Screen) တၢၼ်ႇလႂ်ၼႆယဝ်ႉ။ သႅၼ်း `260.dp` ပဵၼ်သႅၼ်းဢၼ်တႅတ်ႈတေႃး သုတ်း တႃႇ Keyboard ၼႃႈၸေႃး Standard ယဝ်ႉ။

---

### 3. ၶေႃႈထတ်းသၢင်ႈ (Core Takeaways)

* `onCreateInputView()` တေႁဵတ်းၵၢၼ် **ပွၵ်ႈလဵဝ်ၵူၺ်း** မိူဝ်ႈ System တေတေႇပိုတ်ႇ UI Keyboard လႄႈ `ComposeView` တေထုၵ်ႇ သၢင်ႈဝႆႉၼႂ်း Memory ၸွမ်းသၢႆၸႂ် Service ယဝ်ႉ။
* ႁဝ်းၸၢင်ႈၸႂ်ႉ Material 3 Composable (မိူၼ်ၼင်ႇ `Text`, `Box`, `Button`) ၼႂ်း Keyboard လႆႈၵူႈဢၼ် မိူၼ်ၼင်ႇ ၼႂ်းဢႅပ်ႉ ဢၼ်မီး Activity ၼၼ်ႉယဝ်ႉ။

---