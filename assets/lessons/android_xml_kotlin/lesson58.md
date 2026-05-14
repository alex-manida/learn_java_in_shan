

## **Lesson 58: App Icons & Branding**

### **1. Adaptive Icons (ႁၢင်ႈ Icon ဢၼ်လႅၵ်ႈလၢႆႈၸွမ်းငဝ်းလၢႆး)**

မိူဝ်ႈၵွၼ်ႇ Android မီးပၼ်ႁႃ မိူၼ်ၼင်ႇ ၾူၼ်း Samsung ၸႂ်ႉ Icon မူၼ်း၊ ၾူၼ်း Google Pixel ၸႂ်ႉ Icon သီႇၸဵင်ႇ ၼႆလႄႈ
ၼႆႉႁဵတ်းႁႂ်ႈ Icon App ႁဝ်းတူၺ်းဢမ်ႇႁၢင်ႈလီယဝ်ႉ။

* **Adaptive Icons Solution:** ႁဝ်းတေၸႅၵ်ႇ Icon ႁဝ်းပဵၼ် 2 ၸၼ်ႉ:
1. **Foreground:** ပဵၼ်ႁၢင်ႈလူင် (Logo) ၶွင်ႁဝ်း။
2. **Background:** ပဵၼ်သီ ဢမ်ႇၼၼ် ပိုၼ်ႈလင်။


* **Image Asset Studio:** ၼႂ်း Android Studio ၼၼ်ႉ ႁဝ်းတဵၵ်း Right-click တီႈ Folder `res` -> `New` -> `Image Asset` တႃႇသၢင်ႈ Icon ဢၼ်တေလႅၵ်ႈလၢႆႈၸွမ်း သႅၼ်းၾူၼ်းၵူႈမဵဝ်းယဝ်ႉ။

---

### **2. Splash Screens (ၼႃႈၸေႃးႁပ်ႉတွၼ်ႈ ၽူႈၸႂ်ႉတိုဝ်း)**

**Splash Screen** ပဵၼ်ၼႃႈၸေႃးဢွၼ်ႇတၢင်းသုတ်း ဢၼ်ၼႄ Logo App ႁဝ်း မိူဝ်ႈၵူၼ်းၸႂ်ႉပိုတ်ႇ App ယဝ်ႉ။

* **SplashScreen API:** ၼႆႉပဵၼ်လၢႆးတႅမ်ႈမႂ်ႇသုတ်း ဢၼ် Google တိုၵ်းသူၼ်းႁႂ်ႈၸႂ်ႉတိုဝ်းယဝ်ႉ။ မၼ်းတေႁဵတ်းႁႂ်ႈ Logo App ႁဝ်း ဢွၵ်ႇမႃးသေ ယဝ်ႉၵေႃႈ လႅၵ်ႈၵႂႃႇၸူးၼႃႈ Activity လူၺ်ႈဢမ်ႇၶမ်ယဝ်ႉ။
* **Implementation:** ႁဝ်းလူဝ်ႇလႆႈထႅမ် Dependency ၼႂ်း `build.gradle` လႄႈ မႄး `themes.xml` ႁႂ်ႈၸႂ်ႉ `Theme.SplashScreen` ၶႃႈ။
---

### **Step 1: Add Dependency**

ပိုတ်ႇၾၢႆႇ `build.gradle` (Module: app) သေ ထႅမ် Library ၼႆႉၶဝ်ႈၵႂႃႇၶႃႈ:

```kotlin
dependencies {
    implementation("androidx.core:core-splashscreen:1.0.1")
}

```

---

### **Step 2: Create a Splash Theme**

ၵႂႃႇတီႈ `res/values/themes.xml` သေ သၢင်ႈ Theme မႂ်ႇ တွၼ်ႈတႃႇ Splash Screen ၶႃႈ။

```xml
<resources>
    <!-- Theme တွၼ်ႈတႃႇ Splash Screen -->
    <style name="Theme.App.Starting" parent="Theme.SplashScreen">
        <!-- ႁၢင်ႈ Logo ဢၼ်တေၼႄ (ထုၵ်ႇလီပဵၼ် Vector Drawable) -->
        <item name="windowSplashScreenAnimatedIcon">@drawable/ic_app_logo</item>
        
        <!-- သီပိုၼ်ႈလင် ၶွင် Splash Screen -->
        <item name="windowSplashScreenBackground">@color/white</item>
        
        <!-- Theme ဢၼ်တေၼႄ ဝၢႆးၼင်ႇ Splash ယဝ်ႉတူဝ်ႈ (Theme ပိူင်လူင်ၶွင် App) -->
        <item name="postSplashScreenTheme">@style/Theme.YourAppName</item>
    </style>
</resources>

```

---

### **Step 3: Update AndroidManifest.xml**

ႁဝ်းလူဝ်ႇလႅၵ်ႈ `theme` ၶွင် App ႁဝ်း (ဢမ်ႇၼၼ် Launcher Activity) ႁႂ်ႈၸႂ်ႉ Theme ဢၼ်ႁဝ်းတႅမ်ႈဝႆႉၼၼ်ႉၶႃႈ။

```xml
<application
    android:theme="@style/Theme.App.Starting"
    >
    <activity
        android:name=".MainActivity"
        android:exported="true">
        <intent-filter>
            <action android:name="android.intent.action.MAIN" />
            <category android:name="android.intent.category.LAUNCHER" />
        </intent-filter>
    </activity>
</application>

```

---

### **Step 4: Implementation in MainActivity**

ၼႂ်း Code Kotlin ၼၼ်ႉ ႁဝ်းလူဝ်ႇႁွင်ႉ `installSplashScreen()` **ၵွၼ်ႇၼႃႈ** `setContentView()` ယဝ်ႉ။

```kotlin
class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        // 1. ႁွင်ႉ Splash Screen ဢွၼ်ႇတၢင်းသုတ်း
        val splashScreen = installSplashScreen()
        
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // (Optional) သင်ၶႂ်ႈႁႂ်ႈ Splash ၼႄႁိုင်လိူဝ်ၵဝ်ႇ တႃႇလူတ်ႇၶေႃႈမူၼ်း
        /*
        splashScreen.setKeepOnScreenCondition {
            viewModel.isLoading.value == true
        }
        */
    }
}

```

---

### **3. App Naming (ၵၢၼ်ပၼ်ၸိုဝ်ႈ App)**

မိူဝ်ႈႁဝ်းတႄႇသၢင်ႈ Project ၼၼ်ႉ ႁဝ်းၵႆႉပၼ်ၸိုဝ်ႈဝႃႈ `MyApplication` ဢမ်ႇၼၼ် `TestProject`။ 
ၵူၺ်းၵႃႈ မိူဝ်ႈတေသူင်ႇဢွၵ်ႇ ႁႂ်ႈၵူၼ်းၸႂ်ႉတိုဝ်းၼၼ်ႉ ႁဝ်းလူဝ်ႇလႅၵ်ႈပဵၼ်ၸိုဝ်ႈတႄႉမၼ်းယဝ်ႉ။

* **AndroidManifest.xml:** ႁႃတူၺ်းတီႈ `android:label="@string/app_name"`။
* **strings.xml:** ၵႂႃႇမႄးၶေႃႈမူၼ်း `app_name` ႁႂ်ႈပဵၼ်ၸိုဝ်ႈဢၼ်ၶႂ်ႈပၼ် (မိူၼ်ၼင်ႇ "TMK Finance" ဢမ်ႇၼၼ် "ၽူႈၸတ်ႉၵၢၼ်ငိုၼ်း") သေလႄႈ။

---

### **Advice for Students**

'ယႃႇလိုမ်းၵူတ်ႇထတ်း **Safe Zone** ၼႂ်း Image Asset Studio ၼေႃ!' 
မိူဝ်ႈၸဝ်ႈၵဝ်ႇသၢင်ႈ Icon ၼၼ်ႉ ႁႂ်ႈ Logo ယူႇၼႂ်းၵႄႈၶွပ်ႇမူၼ်း ဢၼ်မၼ်းၼႄဝႆႉၼၼ်ႉလႄႈ။ 
သင်ၸဝ်ႈၵဝ်ႇသၢင်ႈ Logo ယႂ်ႇပူၼ်ႉတီႈၼႆ ပေႃးၵႂႃႇယူႇၼိူဝ်ၾူၼ်းမၢင်မဵဝ်းၼၼ်ႉ
ႁၢင်ႈ Logo ၸဝ်ႈၵဝ်ႇတေထုၵ်ႇတတ်း (Cut off) သေ တူၺ်းဢမ်ႇႁၢင်ႈလီယဝ်ႉ။