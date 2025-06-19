/*
    The CourseDetail shows information about a specific course.
    Users can:
    - see course's name and description
    - mark course as favourite
    - navigate to a list of the course's modules
*/

import SwiftUI

struct CourseDetail: View {
    @EnvironmentObject var modelData: ModelData
    var course: Course

    var courseIndex: Int {
        modelData.courses.firstIndex(where: { $0.id == course.id })!
    }

    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(course.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.courses[courseIndex].isFavorite).accessibilityIdentifier("favoriteButton_\(courseIndex)")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                Text("About \(course.name)")
                    .font(.title2)
                Text(course.description)

                Divider()
                
                

                NavigationLink(destination: ModuleList(course: course)) {
                    Text("View Modules")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        .navigationTitle(course.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    CourseDetail(course: modelData.courses[0])
        .environmentObject(modelData)
}
