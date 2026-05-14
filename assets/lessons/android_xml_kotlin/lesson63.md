

## **Lesson 63: Main Project Lab – The Portfolio App**

### **1. The Requirement (ဢၼ်တေလႆႈမီးဝႆႉ)**

* **Branding:** ၸႂ်ႉသီ Sapphire လႄႈ Gold။
* **Showcase:** မီးသဵၼ်ႈၸိုဝ်ႈ Project ပိူင်လူင် (Finance Manager, Recipe Finder, etc.)။
* **Connectivity:** မီးပုမ်ႇတႃႇသိုပ်ႇတေႃႇၸူး Social Media ဢမ်ႇၼၼ် GitHub ၶွင်ၸဝ်ႈၵဝ်ႇ။

---

### **2. The Implementation (လွၵ်းလၢႆးႁဵတ်း)**

#### **A. Data Model (Project.kt)**

```kotlin
data class Project(
    val title: String,
    val description: String,
    val iconId: Int,
    val githubUrl: String
)

```

#### **B. UI Layout (Activity Main)**

ႁဝ်းတေၸႂ်ႉ `RecyclerView` ပဵၼ် Grid (2 Columns) တႃႇၼႄ Project ႁဝ်းႁႂ်ႈႁၢင်ႈလီ။

**activity_main.xml (Snippet)**

```xml
<androidx.recyclerview.widget.RecyclerView
    android:id="@+id/rvProjects"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    app:layoutManager="androidx.recyclerview.widget.GridLayoutManager"
    app:spanCount="2"
    android:padding="8dp"/>

```

---

### **3. The Complete Codes (တူဝ်ယၢင်ႇ Code တဵမ်ထူၼ်ႈ)**

#### **MainActivity.kt (ၵၢၼ်ၸတ်ႉၵၢၼ် Portfolio)**

```kotlin
class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        // 1. တႄႇၸႂ်ႉ Splash Screen API
        installSplashScreen()
        
        super.onCreate(savedInstanceState)
        val binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // 2. တတ်းသႅၼ်းၶေႃႈမူၼ်း Project ႁဝ်း
        val myProjects = listOf(
            Project("Finance Manager", "Local Database with Room", R.drawable.ic_finance, "https://github.com/your-repo"),
            Project("Recipe Finder", "Networking with Retrofit", R.drawable.ic_food, "https://github.com/your-repo"),
            Project("Trivia Game", "UI & Logic Practice", R.drawable.ic_game, "https://github.com/your-repo")
        )

        // 3. သႂ်ႇ Adapter ႁႂ်ႈ RecyclerView
        val adapter = PortfolioAdapter(myProjects) { project ->
            // ပေႃးတဵၵ်း ႁႂ်ႈၵႂႃႇပိုတ်ႇ Link ၼႂ်း Browser
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse(project.githubUrl))
            startActivity(intent)
        }
        binding.rvProjects.adapter = adapter
    }
}

```

#### **PortfolioAdapter.kt (ၵၢၼ်ၼႄႁၢင်ႈ Grid)**

```kotlin
class PortfolioAdapter(
    private val projects: List<Project>,
    private val onClick: (Project) -> Unit
) : RecyclerView.Adapter<PortfolioAdapter.ViewHolder>() {

    class ViewHolder(val binding: ItemProjectBinding) : RecyclerView.ViewHolder(binding.root)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemProjectBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val project = projects[position]
        holder.binding.tvTitle.text = project.title
        holder.binding.ivIcon.setImageResource(project.iconId)
        
        // သႂ်ႇ Animation ဢွၼ်ႇဢွၼ်ႇ မိူဝ်ႈတဵၵ်း
        holder.itemView.setOnClickListener { onClick(project) }
    }

    override fun getItemCount() = projects.size
}

```

---

### **4. The "About" Section & Polish**

* **Strings.xml:** ယႃႇလိုမ်းသႂ်ႇ `strings.xml` တွၼ်ႈတႃႇၽႃႇသႃႇတႆး လႄႈ ဢင်းၵိတ်ႈ။
* **Themes.xml:** ၸႂ်ႉသီ Sapphire (#0F52BA) လႄႈ Gold (#FFD700) တွၼ်ႈတႃႇပဵၼ် Branding ၶွင်ၸဝ်ႈၵဝ်ႇ။
* **Animations:** ၸႂ်ႉ `layoutAnimation` ၼႂ်း RecyclerView တွၼ်ႈတႃႇႁႂ်ႈ List ႁဝ်း "လႅၼ်ႈ" ဢွၵ်ႇမႃးႁၢင်ႈလီ မိူဝ်ႈပိုတ်ႇ App။

---

### **Try it Yourself! (ၸၢမ်းႁဵတ်းႁင်းၵွႆး)**

တွၼ်ႈတႃႇႁႂ်ႈ App ၼႆႉပဵၼ် Portfolio ဢၼ်ၶႅမ်ႉလီၼၼ်ႉ၊ ၸၢမ်းထႅမ် Feature ၸိူဝ်းၼႆႉတူၺ်းၶႃႈ:

1. **Multi-Language Support:** ထႅမ်ၽႃႇသႃႇတႆး (Shan) ၶဝ်ႈၵႂႃႇ။
2. **Share button:** သႂ်ႇပုမ်ႇ "Share this Portfolio" ဢၼ်တေသူင်ႇ Link Play Store ၶွင်ၸဝ်ႈၵဝ်ႇပၼ်ပိူၼ်ႈလႆႈငၢႆႈငၢႆႈ။
3. **Dark Mode:** မႄး `themes.xml (night)` ႁႂ်ႈ App ႁဝ်းတူၺ်းႁၢင်ႈလီ မိူဝ်ႈၵူၼ်းၸႂ်ႉပိုတ်ႇ Dark Mode။

---