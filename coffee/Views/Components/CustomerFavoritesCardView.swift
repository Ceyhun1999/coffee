import SwiftUI

struct CustomerFavoritesCardView: View {
    
    let image: String
    let title: String
    let category: String
    let price: String
    
    var body: some View {
        HStack {
            HStack {
                CustomImageView(imageUrl: image, width: 48, height: 48)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                VStack(alignment: .leading) {
                    Text(title)
                        .bold()
                        .font(.subheadline)
                    Text(category)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            
            Spacer()
            
            Text(price)
                .foregroundStyle(.cyan)
        }
        .padding(8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ZStack {
        Color(uiColor: .systemGroupedBackground)
            .ignoresSafeArea()
        CustomerFavoritesCardView(image: "coffee", title: "New york Cheesecake", category: "Dessert", price: "3.90 $")
            .padding(20)
    }
}
