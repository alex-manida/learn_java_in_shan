

## Lesson 1: Introduction to the Android Input Method Framework (IMF)

### 1. Android IMF ဢၼ်ဝႃႈၼၼ်ႉ မၼ်းပဵၼ်သင်? (What is Android IMF?)

Android Input Method Framework (IMF) ၼႆႉ မၼ်းပဵၼ် သၢႆၸႂ် တႃႇၵုမ်းထိင်း လွင်ႈတႅမ်ႈလိၵ်ႈ (Text Input) တီႈၼႂ်း ပိုၼ်ႉတီႈ Android System တင်းသဵင်ႈယဝ်ႉ။
မၼ်းဢမ်ႇၸႂ်ႈဝႃႈ Keyboard ႁဝ်းၼႆႉ တေၵႂႃႇၵွင်ႉၸူး တီႈ App (Client App) ၼၼ်ႉၵမ်းသိုဝ်ႈ။ 
မၼ်းတေမီး System ယူႇၼႂ်းၵႄႈ Keyboard လႄႈ App ႁဝ်းဝႆႉၼၼ်ႉယဝ်ႉ။

ၼႂ်း IMF ၼႆႉ မၼ်းတေမီး ၸုမ်းႁဵတ်းၵၢၼ် 3 ဢၼ် ဢၼ်ပိူင်ႈလူင်မၼ်းယဝ်ႉ:

* **The Client Application:** မၼ်းပဵၼ် App (မိူၼ်ၼင်ႇ Facebook, Messenger, Line, TikTok) ဢၼ်မီး `EditText` ဢမ်ႇၼၼ် `TextField` ဢၼ်လူဝ်ႇႁပ်ႉဢဝ် လိၵ်ႈတီႈ ၵူၼ်းၸႂ်ႉတိုဝ်း ၼၼ်ႉယဝ်ႉ။
* **The Input Method (IME):** မၼ်းပဵၼ် ၶီးပွတ်ႇ (Custom Keyboard App) ဢၼ်ႁဝ်းတေတႅမ်ႈဢဝ် တင်း Jetpack Compose ၼၼ်ႉယဝ်ႉ။ မၼ်းတေပဵၼ် တူဝ်ပၼ် Text လႄႈ Key Events ၸူး System ယဝ်ႉ။
* **The IMF Manager (System Service):** မၼ်းပဵၼ် ၽူႈၸတ်းၵၢၼ် (Manager) ဢၼ်ၵုမ်းထိင်းပၼ်လွင်ႈ ၵွင်ႉသၢႆၸူး ၼႂ်းၵႄႈ Client App လႄႈ IME (Keyboard) ႁဝ်းၼၼ်ႉယဝ်ႉ။

---

### 2. လၢႆးႁဵတ်းၵၢၼ် IMF (How IMF Works)

မိူဝ်ႈၽူႈၸႂ်ႉတိုဝ်း (User) ၵႂႃႇၼဵၵ်း တီႈ `TextField` ၼႂ်း App သေဢၼ်ဢၼ်ၼၼ်ႉ:

1. **Client App** ၼၼ်ႉ တေသူင်ႇသၢႆ (Request) ၵႂႃႇၸူး **IMF Manager** ဝႃႈ *"ၵမ်းၼႆႉ ၵဝ်လူဝ်ႇႁပ်ႉလိၵ်ႈယဝ်ႉ။ ၵွင်ႉပၼ်တင်း Keyboard လႄႈ"* ၼႆယဝ်ႉ။
2. **IMF Manager** တေၵႂႃႇပိုတ်ႇ (Activate) တူဝ် **Input Method Service (IME)** ဢၼ်ပဵၼ် Keyboard ႁဝ်းယဝ်ႉ။
3. **IMF Manager** တေၵွင်ႉသၢႆ ဢၼ်ႁဝ်းႁွင်ႉဝႃႈ `InputConnection` ၼႂ်းၵႄႈ Keyboard ႁဝ်း တင်း Client App ၼၼ်ႉယဝ်ႉ။ မိူဝ်ႈႁဝ်းၼဵၵ်း Keyboard လိၵ်ႈၵေႃႈ တေလႅၼ်ႈၶဝ်ႈၵႂႃႇ ၼႂ်း App ၼၼ်ႉၵမ်းသိုဝ်ႈယဝ်ႉ။

---

### 3. ၶေႃႈလူဝ်ႇသတိ တႃႇ Jetpack Compose ၼႂ်း Android IME

ၼႂ်း Android ၼၼ်ႉ `InputMethodService` မၼ်းပဵၼ် Component ၵဝ်ႇ (Traditional Android Component) ဢၼ်ဢမ်ႇမီး `LifecycleOwner` မိူၼ်ၼင်ႇ `ComponentActivity`။
ၵွပ်ႈၼႆလႄႈ မိူဝ်ႈႁဝ်းတေဢဝ် **Jetpack Compose** ဢၼ်ပဵၼ် Modern UI Framework ၵႂႃႇၸႂ်ႉၼႂ်း Service ၼၼ်ႉ ႁဝ်းလူဝ်ႇလႆႈ Setup ပၼ် Custom Lifecycle, ViewModelStore, လႄႈ SavedStateRegistry ႁင်းၶေႃ ၼႂ်း Service ၼၼ်ႉယဝ်ႉ (ႁဝ်းတေႁဵၼ်းလွင်ႈၼႆႉ ၼႂ်း Lesson ထႅင်ႈဢၼ်ၼိုင်ႈ)။

---