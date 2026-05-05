## Lesson 13: Sets: Optimizing for Unique Data and High-Speed Membership Testing

**Set** ၼႆႉ မိူၼ်ၵၼ်တင်း Array ၵူၺ်းၵႃႈမၼ်းမီးလွင်ႈပႅၵ်ႇပင်ႇၵၼ်ယူႇ 2 ပိူင်:
1.  **Unique Items:** မၼ်းတေဢမ်ႇပၼ်မီးၶေႃႈมูล ဢၼ်မိူၼ်ၵၼ် (Duplicates) ၼႂ်း Set လႆႈ။
2.  **Unordered:** မၼ်းဢမ်ႇမီးလຳดับ (Index) မိူၼ် Array၊ မၼ်းၵဵပ်းဝႆႉၸိူင်ႉႁိုဝ်ၵေႃႈလႆႈ။

### 1. ၵၢၼ်သၢင်ႈ Set
ႁဝ်းၸႂ်ႉ `Set<Type>` တွၼ်ႈတႃႇမၵ်းမၼ်ႈၶႃႈ (ၵွပ်ႈဝႃႈလၢႆးတႅမ်ႈမၼ်းမိူၼ် Array လႄႈ လူဝ်ႇလႆႈတႅမ်ႈ Type ဝႆႉၸႅၵ်ႇလႅင်းၶႃႈ)။

```swift
// 1. သၢင်ႈ Set လူၺ်ႈမီးၶေႃႈมูลဝႆႉ
var shanVowels: Set = ["ႃ", "ီ", "ူ", "ႃ"] 

print(shanVowels) 
// Output: ["ႃ", "ီ", "ူ"] (တူဝ် "ႃ" ဢၼ်ၵူပ်ႉၵၼ်ၼၼ်ႉ တေႁၢႆၵႂႃႇ 1 တူဝ်)

// 2. သၢင်ႈ Set ဝၢင်ႇဝႆႉ
var usedKeys = Set<Character>()
```

---

### 2. Membership Testing (ၵၢၼ်ၵူတ်ႇထတ်းၶေႃႈมูล)
ဢၼ်ၼႆႉပဵၼ် "ၼမ်ႉၵတ်ႉ" သုတ်းยอด ၶေႃ Set ၶႃႈ။ ပေႃးႁဝ်းၸႂ်ႉ Array သေႁႃၶေႃႈมูล မၼ်းတေလႆႈၵႂႃႇဢၢၼ်ႇတူၺ်းတႄႇတႄႇႁူဝ်ထိုင်ႁၢင် (Slow)။ ၵူၺ်းၵႃႈ Set တေႁႃႁၼ်လႆႈၵမ်းသိုဝ်ႈ (Lightning Fast) ဢမ်ႇဝႃႈမၼ်းတေမီးၶေႃႈมูลၼမ်ၵႃႈႁိုဝ်ၵေႃႈယႃႇ။

```swift
let forbiddenKeys: Set = ["!", "@", "#", "$"]

if forbiddenKeys.contains("@") {
    print("Key ၼႆႉ ဢမ်ႇပၼ်ၸႂ်ႉၶႃႈ")
}
```

---

### 3. Set Operations (ၵၢၼ်ႁူမ်ႈလႄႈၸႅၵ်ႇ Set)
Set မီးလၢႆးၼပ်ႉသွၼ်ႇပၢႆးဝူၼ်ႉ (Set Theory) ဢၼ်ၶႅၼ်ႇတႄႉတႄႉ:

*   **Intersection:** ဢဝ်ၵူၺ်းတူဝ်ဢၼ်မီး "မိူၼ်ၵၼ်" တင်းသွင်ၽၢႆႇ။
*   **Symmetric Difference:** ဢဝ်တူဝ်ဢၼ် "ဢမ်ႇမိူၼ်ၵၼ်" ၼႂ်းသွင်ၽၢႆႇ။
*   **Union:** ဢဝ်ၶေႃႈมูลတင်းသွင်ၽၢႆႇမႃးႁူမ်ႈၵၼ် (တူဝ်မိူၼ်ၵၼ်ၵိုတ်း 1 တူဝ်)။
*   **Subtracting:** ဢဝ်ၶေႃႈมูล Set ၼိုင်ႈ လူတ်းဢွၵ်ႇၼႂ်းထႅင်ႈ Set ၼိုင်ႈ။



```swift
let setA: Set = [1, 2, 3]
let setB: Set = [3, 4, 5]

let combined = setA.union(setB)            // [1, 2, 3, 4, 5]
let common = setA.intersection(setB)      // [3]
let different = setA.subtracting(setB)    // [1, 2]
```

---