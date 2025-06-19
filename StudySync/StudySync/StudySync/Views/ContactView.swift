/*
    The ContactView displays contact information for the StudySync app. Let's users
    get in touch with development team for questions or feedback.
*/

import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack {
            Text("For questions or feedback, contact us at:")
                .padding()
            Link("example@gmail.com", destination: URL(string: "mailto:example@gmail.com")!)
                .accessibilityIdentifier("contactEmail")
                .padding()
        }
        .navigationTitle("Contact Us")
    }
}
