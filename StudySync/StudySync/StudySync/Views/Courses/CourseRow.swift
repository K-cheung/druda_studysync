/*
    The CourseRow displays a row representing a course.
    The row includes:
    - course name and an indicator (star) for whether the course was favorited or not
*/

import SwiftUI


struct CourseRow: View {
    var course: Course

    var body: some View {
        HStack {
            Text(course.name)
            Spacer()
            if course.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}


#Preview {
    let courses = ModelData().courses
    return Group {
        CourseRow(course: courses[0])
    }
}


