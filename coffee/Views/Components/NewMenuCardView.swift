import SDWebImageSwiftUI
import SwiftUI

struct NewMenuCardView: View {
    let image: String
    let title: String
    let price: String
    let calories: String
    let isNew: Bool
    let width: CGFloat?

    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .topTrailing) {
                GeometryReader { geometry in
                    CustomImageView(
                        imageUrl: image,
                        width: geometry.size.width,
                        height: 150
                    )
                }
                .frame(height: 150)

                if isNew {
                    Text("New")
                        .font(.caption2.bold())
                        .foregroundStyle(.white)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 5)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(10)
                }
            }
            .frame(height: 150)
            .clipped()

            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .font(.headline)
                    .lineLimit(1)

                HStack {
                    Text(price)
                        .font(.caption)

                    Spacer()

                    Text(calories)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            .padding(15)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: width)
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}


#Preview {
    ZStack {
        Color(uiColor: .systemGroupedBackground)
            .ignoresSafeArea()
        NewMenuCardView(
            image:
                "https://images.pexels.com/photos/5305639/pexels-photo-5305639.jpeg?auto=compress&cs=tinysrgb&w=800",
            title: "Test title",
            price: "2.5",
            calories: "3.200",
            isNew: true,
            width: 200
        )
    }
}
