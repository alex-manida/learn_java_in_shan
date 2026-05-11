

## **Lesson 29: Building the Adapter (The Brain)**

တွၼ်ႈတႃႇသၢင်ႈ Adapter ႁဝ်းလူဝ်ႇလႆႈ "Overriding" Function လူင် 3 ဢၼ် ဢၼ် Android ပၼ်မႃးယဝ်ႉ။
ႁဝ်းမႃးတူၺ်းၼႃႈတီႈ ၶွင်ၵူႈဢၼ်ၼင်ႇၼႆၶႃႈ:

### **1. `onCreateViewHolder`: Creating the Visual Box**

Function ၼႆႉ တေႁဵတ်းၵၢၼ် မိူဝ်ႈ RecyclerView လူဝ်ႇ "သၢင်ႈ" ViewHolder တူဝ်မႂ်ႇယဝ်ႉ။

* **ၼႃႈတီႈ:** မၼ်းတေၵႂႃႇ "ဢၢၼ်ႇ" ၾၢႆႇ XML (`item_movie.xml`) ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉ သေ သၢင်ႈမၼ်းပဵၼ် View တႄႉတႄႉ ၼိူဝ်ၾူၼ်းယဝ်ႉ။
* **မိူဝ်ႈလႂ်:** မၼ်းတေႁဵတ်းၵၢၼ်တႃႇ 7-10 ပွၵ်ႈၵူၺ်း (ၸွမ်းၼင်ႇသႅၼ်းၼႃႈၸေႃး) တႃႇႁဵတ်းႁႂ်ႈမီး View ၵုမ်ႇထူၼ်ႈ တႃႇ Recycle ယဝ်ႉ။

---

### **2. `onBindViewHolder`: Putting Data Into the Box**

ၼႆႉပဵၼ် Function ဢၼ်ႁဵတ်းၵၢၼ် "ၼၵ်းသုတ်း" မိူဝ်ႈႁဝ်းလၢၵ်ႈ (Scroll) ၼႃႈၸေႃးယဝ်ႉ။

* **ၼႃႈတီႈ:** မၼ်းတေႁပ်ႉဢဝ် ViewHolder ဢၼ်ပဝ်ႇဝႆႉယူႇၼၼ်ႉ သေ "မတ်ႉ" (Bind) ၶေႃႈမုၼ်းသႂ်ႇ ၼႂ်းမၼ်းယဝ်ႉ။
* **တူဝ်ယၢင်ႇ:** "ဢဝ်ၸိုဝ်ႈၼႆႉ သႂ်ႇၼႂ်း TextView ၼႆႉ" ဢမ်ႇၼၼ် "ဢဝ်ႁၢင်ႈၼႆႉ သႂ်ႇၼႂ်း ImageView ၼႆႉ" ယဝ်ႉ။
* **မိူဝ်ႈလႂ်:** ႁဵတ်းၵၢၼ် "ၵူႈပွၵ်ႈ" ဢၼ် Item မႂ်ႇလႅၼ်ႈၶဝ်ႈမႃးၼႂ်းၼႃႈၸေႃးယဝ်ႉ။

---

### **3. `getItemCount`: Telling the List How Many Exist**

Function ၼႆႉ ငၢႆႈသုတ်း ၵူၺ်းၵႃႈ လမ်ႇလွင်ႈတေႉတေႉ။

* **ၼႃႈတီႈ:** မၼ်းတေၼပ်ႉသွၼ်ႇပၼ် RecyclerView ဝႃႈ "တင်းမူတ်း မီးၶေႃႈမူၼ်းလၢႆဢၼ် ၼႆယဝ်ႉ?"
* **သင်ၽိတ်း:** သင်ႁဝ်းမီးၶေႃႈမူၼ်း 100 ဢၼ် ၵူၺ်းၵႃႈ Function ၼႆႉၼပ်ႉဝႆႉဝႃႈ `0` ၼႆၸိုင် ၼႃႈၸေႃးတေပဝ်ႇဝႆႉ လႄႈ တေဢမ်ႇၼႄသင်ပၼ်ႁဝ်း။

---

### **4. တူဝ်ယၢင်ႇ Code (The MovieAdapter)**

```kotlin
class MovieAdapter(private val movieList: List<Movie>) : 
    RecyclerView.Adapter<MovieAdapter.MovieViewHolder>() {

    // 1. သၢင်ႈ View (Visual Box)
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MovieViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.id.item_movie, parent, false)
        return MovieViewHolder(view)
    }

    // 2. သႂ်ႇၶေႃႈမူၼ်း (Binding Data)
    override fun onBindViewHolder(holder: MovieViewHolder, position: Int) {
        val currentMovie = movieList[position]
        holder.txtTitle.text = currentMovie.title
        // ၸႂ်ႉ Glide တႃႇသႂ်ႇႁၢင်ႈ
    }

    // 3. บอกတၢင်းၼမ် (Item Count)
    override fun getItemCount(): Int {
        return movieList.size
    }

    // ViewHolder Class (Lesson 28)
    class MovieViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val txtTitle: TextView = itemView.findViewById(R.id.txtMovieTitle)
    }
}

```

---

### **Advice for Students:**

'ယႃႇပေတႅမ်ႈ Logic ဢၼ်ၼၵ်းၼႃႇ ပူၼ်ႉတီႈ ၼႂ်း `onBindViewHolder` ၼႃၶႃႈ။' 
ယွၼ်ႉဝႃႈ Function ၼႆႉ တေထုၵ်ႇႁွင်ႉၸႂ်ႉ ၵူႈပွၵ်ႈ မိူဝ်ႈၵူၼ်းၸႂ်ႉလၢၵ်ႈ (Scroll) ၼႃႈၸေႃးယဝ်ႉ။
သင်ႁဝ်းတႅမ်ႈ Code ဢၼ်ၵိၼ်ဝူၼ်ႉၼမ်ပူၼ်ႉတီႈ ၼႂ်းၼၼ်ႉၼႆ ၼႃႈၸေႃး App တေၵိုတ်း (Lag) လႄႈ တေၶမ်ထိူင်းၶႃႈ!"