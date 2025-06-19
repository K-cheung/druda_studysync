/*
    The TopicList displays a list of topics within a specific module and allow users to 
    navigate to a quiz for each topic.
    module: the module whose topics will be listed.
    topic: the individual topic within the module that users can select.
*/
import SwiftUI
struct TopicList: View {
    var module: Module
    var body: some View {
        List(module.topics) { topic in
            NavigationLink(destination: QuizView(topic: topic)) {
                Text(topic.name)
            }
        }
        .navigationTitle(module.name)
    }
}
