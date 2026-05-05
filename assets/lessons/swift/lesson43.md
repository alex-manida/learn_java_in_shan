## Lesson 43: Value Types vs. Reference Types: When to Use Which?

ၼႆႉပဵၼ်ၶေႃႈထၢမ် ဢၼ် Developer ၵူႈၵေႃႉလူဝ်ႇလႆႈတွပ်ႇလႆႈ။ ၼႂ်း Swift ႁဝ်းမီးပၵ်းပဝ်းငၢႆႈငၢႆႈ ၸိူင်ႉၼႆၶႃႈ:

### 1. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ Struct (Value Types)?
ႁဝ်းတေၸႂ်ႉ Struct ပဵၼ် **"တူဝ်လိူၵ်ႈတႄႇမၼ်း" (Default Choice)** သေႇသေႇၶႃႈ။
*   **Data Modeling:** မိူဝ်ႈလူဝ်ႇၵဵပ်းၶေႃႈมูลငၢႆႈငၢႆႈ (မိူၼ်ၼင်ႇ တူဝ်လိၵ်ႈ၊ သီ၊ ဢမ်ႇၼၼ် ၵႃႈၶၼ်ၼပ်ႉသွၼ်ႇ)။
*   **Safety:** မိူဝ်ႈႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ Code တၢင်ႇတီႈ မႃးလႅၵ်ႈလၢႆႈၶေႃႈมูลႁဝ်း လူၺ်ႈႁဝ်းဢမ်ႇႁူႉတူဝ်။
*   **Predictability:** ၵွပ်ႈမၼ်းပဵၼ်ၵၢၼ် Copy၊ ႁဝ်းမၼ်ႈၸႂ်လႆႈဝႃႈ ၶေႃႈมูลႁဝ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈ ၸိူင်ႉၼင်ႇမီး "ၽီလွၵ်ႇ" (Shared state bug)။



---

### 2. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ Class (Reference Types)?
ႁဝ်းတေၸႂ်ႉ Class မိူဝ်ႈမီးသၢႆငၢႆ ၸိူင်ႉၼႆၵူၺ်းၶႃႈ:
*   **Shared Identity:** မိူဝ်ႈလူဝ်ႇႁႂ်ႈ Variable လၢႆလၢႆတူဝ် ၸီႉၸူး "ၶေႃႈมูลတူဝ်လဵဝ်ၵၼ်" တႄႇတႄႉ (မိူၼ်ၼင်ႇ Database Connection ဢမ်ႇၼၼ် User Session)။
*   **Inheritance:** မိူဝ်ႈလူဝ်ႇသၢင်ႈ Class ဢၼ်ပုတ်ႈဢဝ်ၼမ်ႉၵတ်ႉပိူၼ်ႈမႃး (မိူၼ်ၼင်ႇ UIView ၼႂ်း UIKit)။
*   **Objective-C Interoperability:** မိူဝ်ႈလူဝ်ႇၸႂ်ႉ Library ၵဝ်ႇၵဝ်ႇ ဢၼ်လူဝ်ႇၸႂ်ႉ Class ၶႃႈ။



---

### 3. တူဝ်ယၢင်ႇတႅတ်ႈတေႃး (Comparison)

| Feature | Struct (Value Type) | Class (Reference Type) |
| :--- | :--- | :--- |
| **ၵၢၼ်သူင်ႇၶေႃႈมูล** | Copy (ထၢႆႇဢဝ်) | Reference (ၸီႉၸူး) |
| **Inheritance** | ဢမ်ႇမီး | မီး |
| **Speed** | ၽႂ်းလိူဝ် (Stack allocation) | ဢိူၵ်ႇလိူဝ် (Heap allocation) |
| **Memory** | ၸတ်းၵၢၼ်ငၢႆႈ | လူဝ်ႇၸႂ်ႉ ARC (Reference Counting) |

---

### 4. ၵၢၼ်ၸႂ်ႉတိုဝ်းတႄႉ (Best Practice)
> **"တွၼ်ႈတႃႇ ၸၢႆးမၢဝ်း ႁဵတ်း Keyboard ၼၼ်ႉ: ၸႂ်ႉ `Struct` တွၼ်ႈတႃႇ `Key`, `Layout`, `ColorPalette`။ ၸိူဝ်းၼႆႉပဵၼ်ၶေႃႈมูล (Data)။ ၸႂ်ႉ `Class` တွၼ်ႈတႃႇ `KeyboardEngine`, `NetworkManager`, `AudioPlayer`။ ၸိူဝ်းၼႆႉပဵၼ် 'တူဝ်ႁဵတ်းၵၢၼ်' (Service/Object) ဢၼ်လူဝ်ႇမီးတူဝ်လဵဝ်ၼႂ်း App ယဝ်ႉ။"**

---