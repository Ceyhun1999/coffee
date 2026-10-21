import SwiftUI

struct SectionTitleView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title3.bold())
            .padding(.top, 20)
            .padding(.leading, 20)
    }
}

#Preview {
    SectionTitleView(title: "Test title")
}
