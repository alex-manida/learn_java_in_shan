## Lesson 43: Value Types vs. Reference Types: When to Use Which?

ၼႆႉပဵၼ်ၶေႃႈထၢမ် ဢၼ် Developer ၵူႈၵေႃႉလူဝ်ႇလႆႈႁူႉဝႆႉယဝ်ႉ။ ၼႂ်း Swift တေႉ ႁဝ်းမီးပၵ်းပိူင် ဢၼ်တွင်းလႆႈငၢႆႈငၢႆႈ ၸိူင်ႉၼႆယဝ်ႉ:

### 1. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ Struct (Value Types)?
ႁဝ်းတေၸႂ်ႉတိုဝ်း Struct ၵဵဝ်ႇလူၺ်ႈ လွင်ႈၽၢႆႇတႂ်ႈၼႆႉ:
*   **Data Modeling:** မိူဝ်ႈလူဝ်ႇၵဵပ်းၶေႃႈမုၼ်းငၢႆႈငၢႆႈ (မိူၼ်ၼင်ႇ တူဝ်လိၵ်ႈ၊ သီ၊ ဢမ်ႇၼၼ် ၵႃႈၶၼ်ၼပ်ႉသွၼ်ႇ)။
*   **Safety:** မိူဝ်ႈႁဝ်းဢမ်ႇၶႂ်ႈႁႂ်ႈ Code တၢင်ႇတီႈ မႃးလႅၵ်ႈလၢႆႈၶေႃႈမုၼ်းႁဝ်း လူၺ်ႈႁဝ်းဢမ်ႇႁူႉတူဝ်။
*   **Predictability:** ၵွပ်ႈမၼ်းပဵၼ်ၵၢၼ် Copy ၼႆလႄႈ ႁဝ်းတမ်းၸႂ်လႆႈဝႃႈ ၶေႃႈမုၼ်းႁဝ်းတေဢမ်ႇလႅၵ်ႈလၢႆႈ ၼႆယဝ်ႉ။



---

### 2. မိူဝ်ႈလႂ်ထုၵ်ႇလီၸႂ်ႉ Class (Reference Types)?
ႁဝ်းတေၸႂ်ႉ Class မိူဝ်ႈမီးသၢႆငၢႆ ၸိူင်ႉၼႆယဝ်ႉ:
*   **Shared Identity:** မိူဝ်ႈလူဝ်ႇႁႂ်ႈ Variable လၢႆလၢႆတူဝ် ၸီႉၸူး "ၶေႃႈမုၼ်းတူဝ်လဵဝ်ၵၼ်" (မိူၼ်ၼင်ႇ Database Connection ဢမ်ႇၼၼ် User Session)။
*   **Inheritance:** မိူဝ်ႈလူဝ်ႇသၢင်ႈ Class ဢၼ်ပုတ်ႈဢဝ်ၼမ်ႉၵတ်ႉပိူၼ်ႈမႃး (မိူၼ်ၼင်ႇ UIView ၼႂ်း UIKit)။
*   **Objective-C Interoperability:** မိူဝ်ႈလူဝ်ႇၸႂ်ႉ Library ၵဝ်ႇၵဝ်ႇ ဢၼ်လူဝ်ႇၸႂ်ႉ Class တီႈ Objective-C။



---

### 3. တူဝ်ယၢင်ႇတႅတ်ႈတေႃး (Comparison)

| Feature                | Struct (Value Type) | Class (Reference Type)             |
|:-----------------------| :--- |:-----------------------------------|
| **ၵၢၼ်သူင်ႇၶေႃႈမုၼ်း** | Copy (ထၢႆႇဢဝ်) | Reference (ၸီႉၸူး)                 |
| **Inheritance**        | ဢမ်ႇမီး | မီး                                |
| **Speed**              | ၽႂ်းလိူဝ် (Stack allocation) | ထိူင်းဢိတ်း (Heap allocation)      |
| **Memory**             | ၸတ်းၵၢၼ်ငၢႆႈ | လူဝ်ႇၸႂ်ႉ ARC (Reference Counting) |

---