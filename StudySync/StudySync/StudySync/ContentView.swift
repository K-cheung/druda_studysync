/*
    The ContentView is the mainview for the courses application and entry point to the app's
    user interface.
    ContentView: displays list of available courses through CourseList
*/
import SwiftUI

struct ContentView: View {
    var body: some View {
        CourseList()
    }
}


#Preview {
    ContentView()
        .environmentObject(ModelData())
}
