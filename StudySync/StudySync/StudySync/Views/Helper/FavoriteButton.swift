/*
    The FavoriteButton allows users to mark or unmark an item as a favorite by
    toggling the button. 
    It displays a filled star icon when marked as favorite, otherwise it displays 
    an empty star icon.
*/

import SwiftUI


struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            //show star icon
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }.accessibilityIdentifier("favouriteButton")
    }
}


#Preview {
    FavoriteButton(isSet: .constant(true))
}

