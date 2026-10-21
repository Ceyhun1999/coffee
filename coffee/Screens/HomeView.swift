import SwiftUI

struct HomeView: View {

    private let coffeeItems = CoffeeItem.samples

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    // MARK: - Header
    private var header: some View {
        VStack(alignment: .leading) {
            Text("CozyCup")
                .font(.largeTitle.bold())
            Text("What would you like to drink today?")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 20)
    }

    // MARK: - New menu section
    private var menuSection: some View {
        VStack(alignment: .leading) {
            SectionTitleView(title: "New on the menu")

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(coffeeItems.filter { $0.isNew }) { coffeeItem in
                        NewMenuCardView(
                            image: coffeeItem.imageURL,
                            title: coffeeItem.name,
                            price: coffeeItem.price,
                            calories: coffeeItem.calories,
                            isNew: coffeeItem.isNew,
                            width: 200
                        )

                    }
                }
                .padding(.horizontal, 20)
            }
        }

    }

    // MARK: - Information section
    private var informationSection: some View {
        VStack(alignment: .leading) {
            SectionTitleView(title: "Information")
            Grid(horizontalSpacing: 10, verticalSpacing: 10) {
                GridRow {
                    InformationCardView(
                        icon: "wifi",
                        title: "Wi-Fi",
                        subTitle: "Free"
                    )
                    InformationCardView(
                        icon: "clock.fill",
                        title: "Hours",
                        subTitle: "08:00-20:00"
                    )
                }

                GridRow {
                    InformationCardView(
                        icon: "creditcard.fill",
                        title: "Payment",
                        subTitle: "Card / Cash"
                    )
                    InformationCardView(
                        icon: "mappin.circle.fill",
                        title: "Address",
                        subTitle: "Nizami Street"
                    )
                }
            }
            .padding(.horizontal, 20)
        }

    }

    // MARK: - Customer Favorites section
    private var customerFavoritesSection: some View {
        VStack(alignment: .leading) {
            SectionTitleView(title: "Customer Favorites")
            LazyVStack {
                ForEach(coffeeItems.filter { $0.isFavorite }) { coffeeItem in
                    CustomerFavoritesCardView(
                        image: coffeeItem.imageURL,
                        title: coffeeItem.name,
                        category: coffeeItem.category,
                        price: coffeeItem.price
                    )
                }
            }
            .padding(.horizontal, 20)

        }

    }

    // MARK: - Full Menu section
    private var fullMenuSection: some View {
        VStack(alignment: .leading) {
            SectionTitleView(title: "Full Menu")
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(coffeeItems) { coffeeItem in
                    NewMenuCardView(
                        image: coffeeItem.imageURL,
                        title: coffeeItem.name,
                        price: coffeeItem.price,
                        calories: coffeeItem.calories,
                        isNew: coffeeItem.isNew,
                        width: nil
                    )
                }
            }
            .padding(.horizontal, 20)
        }

    }

    var body: some View {
        ZStack {
            Color(uiColor: .systemGroupedBackground)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    header
                    menuSection
                    informationSection
                    customerFavoritesSection
                    fullMenuSection
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .scrollIndicators(.hidden)
        }

    }

}

#Preview {
    HomeView()
}
