## တွၼ်ႈသွၼ် 5: **Communication via App Groups**

ၼႂ်းတွၼ်ႈသွၼ်ၼႆႉ ႁဝ်းတေမႃးႁဵၼ်းလၢႆး "သူင်ႇၶေႃႈမုၼ်း" (Data Communication) ၼႂ်းၵႄႈၵၢင် Main App လႄႈ Keyboard Extension ယဝ်ႉ။ 
ယွၼ်ႉ iOS Sandbox ပဵၼ်ႁူဝ်ႉၵၼ်ဝႆႉလႄႈ ႁဝ်းတေလႆႈၸႂ်ႉ **App Groups** ပဵၼ်တူဝ်ၵၢင်ယဝ်ႉ။

### 1. ပဵၼ်သင်ႁဝ်းၸင်ႇလူဝ်ႇ App Groups?

ပိူင်သၢင်ႈ Security ၶွင် iOS ၼၼ်ႉ မၼ်းဢမ်ႇပၼ် App ဢၼ်ၼိုင်ႈတင်းဢၼ်ၼိုင်ႈ ႁၼ် Data ၵၼ်လႆႈ။

* သင် User လႅၵ်ႈ Theme ပဵၼ် "သီလႅင်" ၼႂ်း Main App ၼႆ တူဝ် Keyboard တေဢမ်ႇႁူႉၸွမ်းလႆႈ။
* သင် User ပိၵ်ႉသဵင် Keyboard ၼႂ်း Main App ၼႆ တူဝ် Keyboard ၵေႃႈတေဢမ်ႇႁူႉ။

**App Groups** ၼႆႉ မၼ်းတေမႃးပိုတ်ႇ "ပိုၼ်ႉတီႈၵၢင်" (Shared Container) ဢၼ်တင်းသွင်ၽၢႆႇ ၸၢင်ႈၶဝ်ႈလူတ်ႇဢဝ် Data လႆႈၼၼ်ႉယဝ်ႉ။

### 2. လၢႆးၶူင်သၢင်ႈ App Groups (Setup)

ၸဝ်ႈၵဝ်ႇလႆႈႁဵတ်းဝႆႉယဝ်ႉၼႆသေတႃႉ ႁဝ်းမႃးၵူတ်ႇထတ်း (Review) ၶိုၼ်းၵမ်းၼိုင်ႈ:

1. ၵႂႃႇတီႈ Xcode > Project Settings > **Signing & Capabilities**။
2. ၼဵၵ်ႉ **+ Capability** သေလိူၵ်ႈ **App Groups**။
3. သႂ်ႇၸိုဝ်ႈဝႃႈ `group.it.saimao.tmk_keyboard` (ႁႂ်ႈမိူၼ်ၵၼ်တင်း 2 Targets)။

### 3. လၢႆးၸႂ်ႉ Shared UserDefaults

တီႈၼႂ်း Code ၼၼ်ႉ ႁဝ်းတေဢမ်ႇၸၢင်ႈၸႂ်ႉ `UserDefaults.standard` လႆႈ။ ႁဝ်းတေလႆႈၸႂ်ႉ **Suite Name** ဢၼ်ပဵၼ်ၸိုဝ်ႈ App Group ႁဝ်းၼၼ်ႉယဝ်ႉ။

**ၵၢၼ်ၵဵပ်း Data (ၼႂ်း Main App):**

```swift
let sharedDefaults = UserDefaults(suiteName: "group.it.saimao.tmk_keyboard")
sharedDefaults?.set("Shan", forKey: "SelectedLanguage")
sharedDefaults?.synchronize() // တဵၵ်းႁႂ်ႈမၼ်း Save ၵမ်းလဵဝ်

```

**ၵၢၼ်လူတ်ႇ Data (ၼႂ်း Keyboard Extension):**

```swift
let sharedDefaults = UserDefaults(suiteName: "group.it.saimao.tmk_keyboard")
let currentLang = sharedDefaults?.string(forKey: "SelectedLanguage") ?? "English"

```

### 4. တႃႇၸႂ်ႉၼႂ်း TMK Keyboard

တွၼ်ႈတႃႇ TMK Keyboard ႁဝ်းၼၼ်ႉ ႁဝ်းတေၸႂ်ႉ App Group တႃႇၵုမ်းထိင်း:

* **SelectedLanguage:** တူၺ်းဝႃႈ User လိူၵ်ႈဝႆႉ English, Myanmar, ဢမ်ႇၼၼ် Shan။
* **KeyboardTheme:** သီ Keyboard (Dark, Light, ဢမ်ႇၼၼ် Custom colors)။
* **HapticFeedback:** ပိုတ်ႇ/ပိၵ်ႉ လွင်ႈသၼ်ႇ မိူဝ်ႈတႅမ်ႈလိၵ်ႈ။

---