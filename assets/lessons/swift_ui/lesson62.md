

## **Module 8 | Lesson 62: Real-time Field Validation using Observation**

### **1. ViewModel တႃႇၵုမ်းထိင်း Logic**

ႁဝ်းတေဢမ်ႇသႂ်ႇ Logic တႃႇၵူတ်ႇထတ်းဝႆႉၼႂ်း View။ ႁဝ်းတေသၢင်ႈ Class ဢၼ်ၸႂ်ႉ `@Observable` တႃႇၸတ်းၵၢၼ်ၶေႃႈမုၼ်း လႄႈ ၵူတ်ႇထတ်း Error ႁင်းမၼ်းယဝ်ႉ။

### **2. Computed Properties (တူဝ်ၵူတ်ႇထတ်း)**

ႁဝ်းတေၸႂ်ႉ Variable ဢၼ်ၵူတ်ႇထတ်းၵႃႈၶၼ်ၵမ်းလဵဝ် မိူၼ်ၼင်ႇ `isValidEmail` ဢမ်ႇၼၼ် `canSubmit`။

---

### **3. Example Code: Secure Sign Up Form**

တူၺ်းတူဝ်ယၢင်ႇ ၵၢၼ်ၵူတ်ႇထတ်း Email လႄႈ Password ၶႃႈ:

```swift
import SwiftUI
import Observation

// 1. သၢင်ႈ ViewModel တႃႇၵူတ်ႇထတ်း Data
@Observable
class RegistrationViewModel {
    var email = ""
    var password = ""
    
    // ၵူတ်ႇထတ်း Email
    var isEmailValid: Bool {
        email.contains("@") && email.contains(".")
    }
    
    // ၵူတ်ႇထတ်း Password (လူဝ်ႇ 8 တူဝ်ၶိုၼ်ႈၼိူဝ်)
    var isPasswordValid: Bool {
        password.count >= 8
    }
    
    // ပုမ်ႇ Submit တေၸႂ်ႉလႆႈ မိူဝ်ႈမၢၼ်ႇတင်းသွင်ဢၼ်
    var canSubmit: Bool {
        isEmailValid && isPasswordValid
    }
}

struct ValidationFormView: View {
    // 2. ႁွင်ႉၸႂ်ႉ ViewModel
    @State private var viewModel = RegistrationViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Account Details")) {
                    VStack(alignment: .leading) {
                        TextField("Email", text: $viewModel.email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        
                        // ၼႄလိၵ်ႈ Error သင် Email ၽိတ်း
                        if !viewModel.email.isEmpty && !viewModel.isEmailValid {
                            Text("Invalid email format")
                                .font(.caption)
                                .foregroundColor(.red)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        SecureField("Password", text: $viewModel.password)
                        
                        if !viewModel.password.isEmpty && !viewModel.isPasswordValid {
                            Text("Password must be at least 8 characters")
                                .font(.caption)
                                .foregroundColor(.red)
                        }
                    }
                }
                
                Section {
                    Button("Create Account") {
                        print("Account created!")
                    }
                    .disabled(!viewModel.canSubmit) // ၼဵၵ်းဢမ်ႇလႆႈ သင် Data ၽိတ်း
                }
            }
            .navigationTitle("TMK Sign Up")
        }
    }
}

```

---

### **4. Key Takeaways**

| Technique | Benefit (Shan)                                                        |
| --- |-----------------------------------------------------------------------|
| **@Observable** | ႁဵတ်းႁႂ်ႈ View "တူင်ႉၼိုင်" ၸွမ်း Data ဢၼ်လႅၵ်ႈလၢႆႈၵမ်းလဵဝ်။          |
| **Computed Property** | ၸွႆႈႁႂ်ႈ Code ၵူတ်ႇထတ်း (Validation) ယူႇတီႈလဵဝ်ၵၼ် တူၺ်းငၢႆႈ။         |
| **.disabled()** | ႁႄႉၵင်ႈ User ဢမ်ႇႁႂ်ႈသူင်ႇ Data ဢၼ်ၽိတ်း ၶဝ်ႈၸူး Database/Server။     |
| **Real-time Feedback** | ၸွႆႈပၼ်ၾၢင်ႉ User ၵမ်းလဵဝ်။ ၶဝ်ဢမ်ႇလူဝ်ႇၼဵၵ်း Save ၸင်ႇတေႁူႉဝႃႈၽိတ်း။ |

---
