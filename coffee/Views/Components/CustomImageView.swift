import SwiftUI
import SDWebImageSwiftUI

struct CustomImageView: View {
    
    let imageUrl: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        
        WebImage(url: URL(string: imageUrl)) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            ZStack {
                Color.gray.opacity(0.1)

                Image(systemName: "cup.and.saucer")
                    .font(.largeTitle)
                    .foregroundStyle(.gray)
            }
        }
        .frame(width: width, height: height)
        .clipped()
    }
}
