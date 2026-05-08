

## **Module 3 | Project 3: Programming Course Catalog & Resource Library**

### **1. ယိူင်းဢၢၼ်း (Goal)**

သၢင်ႈ App ဢၼ်မီးၼႃႈၸေႃး 2 ၼႃႈ (Master-Detail):

* **Master View:** ၼႄသဵၼ်ႈမၢႆ Course တင်းမူတ်း ဢၼ်ၸႅၵ်ႇတွၼ်ႈ (Sections) ဝႆႉ။
* **Search & Filter:** ၸႂ်ႉ `.searchable` တႃႇၶူၼ်ႉႁႃၸိုဝ်ႈ Course ႁႂ်ႈငၢႆႈ။
* **Interactive List:** မီး Swipe Actions တႃႇ "Pin" ဢမ်ႇၼၼ် "Favorite"။
* **Detail View:** မိူဝ်ႈၼဵၵ်းလိူၵ်ႈ Course ၼၼ်ႉ ႁႂ်ႈသူင်ႇ Data ၵႂႃႇၼႄႁၢင်ႈ၊ ၸိုဝ်ႈ၊ လႄႈ ၶေႃႈမုၼ်း ပိုတ်ႇၼႄ (Description)။

### **2. Solution Code (တူဝ်ယၢင်ႇ Code)**

```swift
import SwiftUI

// 1. Data Model
struct TMKCourse: Identifiable {
    let id = UUID()
    let title: String
    let category: String
    let icon: String
    let description: String
}

struct CourseCatalogApp: View {
    // 2. Sample Data
    @State private var courses = [
        TMKCourse(title: "SwiftUI for Beginners", category: "Mobile", icon: "swift", description: "Learn to build modern iOS apps using declarative UI."),
        TMKCourse(title: "Python Foundation", category: "Backend", icon: "terminal", description: "Master Python programming from scratch for automation."),
        TMKCourse(title: "Flutter with Dart", category: "Mobile", icon: "bird", description: "Build cross-platform apps for Android and iOS."),
        TMKCourse(title: "MySQL Database", category: "Database", icon: "server.rack", description: "Understand relational databases and SQL queries.")
    ]
    
    @State private var searchText = ""
    
    // 3. Search Logic
    var filteredCourses: [TMKCourse] {
        if searchText.isEmpty {
            return courses
        } else {
            return courses.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                // ၸႅၵ်ႇတွၼ်ႈၸွမ်း Category (တူဝ်ယၢင်ႇ Mobile Section)
                Section(header: Text("Featured Courses")) {
                    ForEach(filteredCourses) { course in
                        NavigationLink(destination: CourseDetailView(course: course)) {
                            HStack(spacing: 15) {
                                Image(systemName: course.icon)
                                    .foregroundStyle(.blue)
                                    .font(.title2)
                                    .frame(width: 40)
                                
                                VStack(alignment: .leading) {
                                    Text(course.title).font(.headline)
                                    Text(course.category).font(.caption).foregroundStyle(.secondary)
                                }
                            }
                        }
                        .swipeActions(edge: .leading) {
                            Button { print("Pinned") } label: {
                                Label("Pin", systemName: "pin.fill")
                            }
                            .tint(.orange)
                        }
                    }
                }
            }
            .navigationTitle("TMK Catalog")
            .searchable(text: $searchText, prompt: "Search courses...")
        }
    }
}

// 4. Detail View
struct CourseDetailView: View {
    let course: TMKCourse
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(systemName: course.icon)
                    .font(.system(size: 80))
                    .foregroundStyle(.blue)
                    .padding()
                    .background(Circle().fill(.blue.opacity(0.1)))
                
                Text(course.title)
                    .font(.largeTitle).bold()
                
                Text(course.category)
                    .font(.headline)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 4)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
                Text(course.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                Button("Enroll Now") {
                    // Action for enrollment
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            .padding()
        }
        .navigationTitle("Course Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CourseCatalogApp()
}

```

---

### **Summary (သူးပ်းႁူဝ်တွၼ်ႈ Project)**

| Feature | SwiftUI Concept Used (Shan) |
| --- | --- |
| **Dynamic List** | `ForEach` တင်း `Identifiable` Data တႃႇၼႄသင်တၢၼ်းတင်းၼမ်။ |
| **Navigation** | `NavigationStack` လႄႈ `NavigationLink` တႃႇလႅၵ်ႈၼႃႈจอ။ |
| **Data Passing** | သူင်ႇ `TMKCourse` object တင်းမူတ်းၵႂႃႇၸူး Detail View။ |
| **Searchable** | `.searchable` modifier တင်း Computed Property တႃႇ Filter Data။ |
| **UX Enhancements** | `Swipe Actions` တႃႇ Pin လႄႈ `ScrollView` တႃႇၼႃႈจอ Detail။ |

---