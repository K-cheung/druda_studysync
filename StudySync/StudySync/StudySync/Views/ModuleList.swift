/*
    The ModuleList displays a list of modules for a specific course. Each module can then lead
    to the list of topics for that module.
    course: The course contains a list of modules to be displayed
*/

import SwiftUI
struct ModuleList: View {
    var course: Course
    var body: some View {
        List(course.modules) { module in
            NavigationLink(destination: TopicList(module: module)) {
                Text(module.name)
            }
        }
        .navigationTitle(course.name)
    }
}

#Preview {
    let modelData = ModelData()
    ModuleList(course: modelData.courses.first!)
}
