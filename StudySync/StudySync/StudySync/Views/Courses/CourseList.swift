/*
    The CourseList displays a list of courses.

    Users can filter the list to show only their favourite courses and each course is clickable
    to show a more detailed view.
*/

import SwiftUI

struct CourseList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    @State private var showContactView = false

    var filteredCourses: [Course] {
        modelData.courses.filter { course in
            (!showFavoritesOnly || course.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredCourses) { course in
                    NavigationLink(destination: CourseDetail(course: course)) {
                        CourseRow(course: course)
                    }
                }
            }
            .navigationTitle("Courses")
            
            //Add button for "Contact Us"
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showContactView = true
                    }) {
                        Text("Contact Us")
                    }
                    .accessibilityIdentifier("contactButton")
                }
            }
            .sheet(isPresented: $showContactView) {
                NavigationView {
                    ContactView()
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button("Close") {
                                    showContactView = false
                                    // Dismiss the view
                                }
                                .accessibilityIdentifier("contactCloseButton")
                            }
                        }
                    
                        .navigationBarTitle("", displayMode: .inline)
                }
            }
        }
    }
    
    
}


#Preview {
    CourseList()
        .environmentObject(ModelData())
}
