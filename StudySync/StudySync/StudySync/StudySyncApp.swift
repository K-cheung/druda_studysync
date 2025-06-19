/*
    The StudySyncApp is the entry point of StudySync application that initializes and provides app's
    main environment object to hold shared data across app views.
    modelData: an instance of ModelData that holds app's data shared by environment
*/

import SwiftUI

@main
struct StudySyncApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
