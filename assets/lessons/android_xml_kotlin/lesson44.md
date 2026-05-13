

## **Lesson 44: JSON Parsing with GSON**

### **1. The Converter (ၵူၼ်းပိၼ်ႇလိၵ်ႈ ႁႂ်ႈပဵၼ်ၶေႃႈမုၼ်း ဢၼ်ၸႂ်ႉလႆႈ)**

**GSON** ၼႆႉပဵၼ် Library ဢၼ် Google သၢင်ႈဝႆႉယဝ်ႉ။ မၼ်းႁဵတ်းၵၢၼ်မိူၼ်ၼင်ႇ "ၸၢၵ်ႈပိၼ်ႇၽႃႇသႃႇ" ႁင်းၵွႆး (Automatic) ယဝ်ႉ။

* **လွင်ႈႁဵတ်းၵၢၼ်:** မိူဝ်ႈ Retrofit လႆႈ JSON မႃးၼၼ်ႉ GSON တေၵႂႃႇတူၺ်း "ၸိုဝ်ႈ" (Key) ၼႂ်း JSON သေ ဢဝ်ၶေႃႈမုၼ်းၼၼ်ႉ မႃးသႂ်ႇပၼ်ၼႂ်း Variable ၶွင် Kotlin Data Class ႁဝ်းႁင်းၵွႆးယဝ်ႉ။

---

### **2. Mapping Keys with `@SerializedName**`

ပၼ်ႁႃၼိုင်ႈဢၼ်ၵေႃႈပဵၼ်: ၵူၼ်းတႅမ်ႈ API ၶဝ်ၵႆႉၸႂ်ႉလၢႆးတႅမ်ႈၸိုဝ်ႈ (Naming Convention) ဢၼ်ဢမ်ႇမိူၼ် Kotlin။

* **API:** ၵႆႉၸႂ်ႉ "snake_case" (မိူၼ်ၼင်ႇ `meal_id`, `recipe_name`)။
* **Kotlin:** ႁဝ်းၵႆႉၸႂ်ႉ "camelCase" (မိူၼ်ၼင်ႇ `mealId`, `recipeName`)။

တွၼ်ႈတႃႇၵႄႈပၼ်ႁႃၼႆႉ ႁဝ်းတေၸႂ်ႉ **`@SerializedName`** တႃႇ "ၵွင်ႉ" (Map) ၸိုဝ်ႈ 2 ဢၼ်ၼႆႉ ႁႂ်ႈပဵၼ်ဢၼ်လဵဝ်ၵၼ်ယဝ်ႉ။

#### **တူဝ်ယၢင်ႇ Code (Recipe.kt):**

```kotlin
data class Recipe(
    // ပွင်ႇဝႃႈ: ၼႂ်း JSON ၸိုဝ်ႈမၼ်းပဵၼ် "meal_id" ၼႃ၊ ၵူၺ်းၵႃႈ ၼႂ်း Kotlin ႁဝ်းတေၸႂ်ႉၸိုဝ်ႈ "id" ဢိူဝ်ႈ။
    @SerializedName("meal_id")
    val id: Int,

    @SerializedName("recipe_name")
    val title: String,

    val image: String // သင်ၸိုဝ်ႈမိူၼ်ၵၼ်တင်း JSON ယဝ်ႉ၊ ဢမ်ႇလူဝ်ႇသႂ်ႇ SerializedName ກေႃႈလႆႈၶႃႈ။
)

```

---

### **3. Why use GSON? (ပဵၼ်သင်လူဝ်ႇၸႂ်ႉ GSON?)**

* **Type Safety:** မၼ်းတေၵူတ်ႇထတ်းပၼ်ဝႃႈ ၶေႃႈမုၼ်းပဵၼ် `Int` ႁိုဝ် `String` ႁိုဝ် ၼႆယဝ်ႉ။
* **Less Code:** ႁဝ်းဢမ်ႇလူဝ်ႇတႅမ်ႈ Code တႃႇ "ထွၼ်" ၶေႃႈမူၼ်းဢွၵ်ႇတီႈ JSON ဢၼ်ၵူၼ်းၵမ်ႈၼမ် ၵႆႉၽိတ်းၼၼ်ႉယဝ်ႉ။
* **Nested Objects:** သင်ၼႂ်း JSON မီး List ဢမ်ႇၼၼ် Object ထႅင်ႈၸၼ်ႉၼိုင်ႈၼႆ GSON တေၸွႆးပိၼ်ႇပၼ်တင်းမူတ်း ႁင်းၵွႆးယဝ်ႉ။

---

### **Advice for Students**

'တႃႇသေႇ ႁႂ်ႈၵူတ်ႇထတ်း (Check) ၸိုဝ်ႈ Key ၼႂ်း JSON ႁႂ်ႈမၼ်း "ၶဝ်ႈၵၼ်" တင်းၼႂ်း `@SerializedName` ၼႃၶႃႈ။' 
သင်ၸဝ်ႈၵဝ်ႇတႅမ်ႈၽိတ်းၵႂႃႇ ၼိုင်ႈတူဝ်ၵူၺ်းၸိုင် (မိူၼ်ၼင်ႇ တႅမ်ႈ `mealId` တႅၼ်း `meal_id`) 
GSON တေႁႃဢမ်ႇထူပ်းသေ တေႁဵတ်းႁႂ်ႈ Variable ၼၼ်ႉပဵၼ် `null` ၵႂႃႇသေ ၼႆႉပဵၼ် ဢၼ်တေႁဵတ်းႁႂ်ႈ App ႁဝ်းၼႄၶေႃႈမူၼ်းၽိတ်းပိူင်ယဝ်ႉ!