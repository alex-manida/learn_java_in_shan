

## **Lesson 33: Main Project Lab – My Movie Library**

### **1. The Requirement (ၶေႃႈလူဝ်ႇမီး)**

ႁဝ်းတေတႅမ်ႈ App ဢၼ်မီး ၼႃႈၸေႃး 2 ၼႃႈၶႃႈ:

* **HomeFragment:** ၼႄသဵၼ်ႈၸိုဝ်ႈတင်းမူတ်း လူၺ်ႈပဵၼ်သဵၼ်ႈတင်ႈ (Vertical List)။
* **DetailFragment:** မိူဝ်ႈတဵၵ်း Item ၼိုင်ႈဢၼ်ၼၼ်ႉ ႁႂ်ႈပိုတ်ႇၼႄႁၢင်ႈယႂ်ႇ၊ ၸိုဝ်ႈ၊ ပီဢွၵ်ႇ လႄႈ ၶေႃႈသပ်းလႅင်းတဵမ်ထူၼ်ႈၶႃႈ။

---

### **2. The Implementation (လွၵ်းလၢႆးႁဵတ်း)**

#### **Step 1: The Movie Data Model**

သၢင်ႈ `data class` တွၼ်ႈတႃႇသိမ်းၶေႃႈမုၼ်း:

```kotlin
@Parcelize
data class Movie(
    val id: Int,
    val title: String,
    val year: String,
    val description: String,
    val imageResId: Int
) : Parcelable

```

> **Note:** ႁဝ်းၸႂ်ႉ `@Parcelize` တႃႇႁႂ်ႈသူင်ႇ Object ၵႂႃႇၸူး SafeArgs လႆႈငၢႆႈငၢႆႈယဝ်ႉ။

#### **Step 2: Designing `item_movie.xml**`

ၸႂ်ႉ `MaterialCardView` တႃႇႁဵတ်းႁၢင်ႈ Item ႁႂ်ႈမီး Elevation လႄႈ Corner Radius ႁၢင်ႈလီ။

* ၽၢႆႇသၢႆႉ: `ImageView` (Poster)
* ၽၢႆႇၶႂႃ: `TextView` (Title) လႄႈ `TextView` (Year)

#### **Step 3: Building the MovieAdapter**

တႅမ်ႈ Adapter ဢၼ်မီး ViewHolder လႄႈ Lambda Function တႃႇႁပ်ႉၵၢၼ်တဵၵ်း (Click)။

```kotlin
class MovieAdapter(
    private val movies: List<Movie>,
    private val onClick: (Movie) -> Unit
) : RecyclerView.Adapter<MovieAdapter.MovieViewHolder>() {
    // ... onCreateViewHolder, onBindViewHolder, getItemCount ...
}

```

#### **Step 4: Click Listener & Navigation**

ၼႂ်း `HomeFragment` ႁဝ်းတေသင်ႇႁႂ်ႈမၼ်းပိုတ်ႇၼႃႈ Detail:

```kotlin
val adapter = MovieAdapter(movieList) { movie ->
    val action = HomeFragmentDirections.actionHomeToDetail(movie)
    findNavController().navigate(action)
}
binding.recyclerView.adapter = adapter

```

---

### **3. Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**

ပုၼ်ႈတႃႇႁႂ်ႈပွင်ႇၸႂ်လိူဝ်ၵဝ်ႇၼၼ်ႉ ၸၢမ်းႁဵတ်း Project ဢွၼ်ႇၸိူဝ်းၼႆႉၶႃႈ:

#### **1. Contact List**

* **Requirement:** ႁဵတ်းသဵၼ်ႈၸိုဝ်ႈၵူၼ်း (Names & Phone Numbers)။
* **Key Learning:** ၸၢမ်းၸႂ်ႉ `LinearLayoutManager` သေ သႂ်ႇ `DividerItemDecoration` တႃႇတတ်းသဵၼ်ႈၼႂ်းၵႄႈ Item။

#### **2. Horizontal Product Slider**

* **Requirement:** ႁဵတ်း RecyclerView ဢၼ်လၢၵ်ႈသၢႆႉ-ၶႂႃ (Horizontal) တႃႇၼႄၶူဝ်းသိုဝ်ႉ။
* **Key Learning:** လႅၵ်ႈ `layoutManager` ပဵၼ် `LinearLayoutManager(context, HORIZONTAL, false)`။

#### **3. Language Glossary**

* **Requirement:** ႁဵတ်းသဵၼ်ႈၶေႃႈၵႂၢမ်း လႄႈ ၶေႃႈပွင်ႇၸႂ် (Words & Meanings)။
* **Challenge:** ၸၢမ်းသႂ်ႇ `SearchView` တီႈၼိူဝ်သေ ႁဵတ်း Filter ၶေႃႈမုၼ်းၼႂ်း List တူၺ်းလႄႈ။

---