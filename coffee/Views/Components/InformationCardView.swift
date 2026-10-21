import SwiftUI

struct InformationCardView: View {
    
    let icon: String
    let title: String
    let subTitle: String
    
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundStyle(.teal)
            
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundStyle(.secondary)
                    .font(.caption)
                
                Text(subTitle)
                    .font(.system(size: 16, weight: .semibold))
            }
        }
        .padding(10)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}


#Preview {
    ZStack {
        Color(uiColor: .systemGroupedBackground)
            .ignoresSafeArea()
        InformationCardView(icon: "wifi", title: "Wi-Fi", subTitle: "Free")
            .padding(20)
    }
}
