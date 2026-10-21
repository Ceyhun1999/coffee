
//
//  CoffeeItem.swift
//  CozyCup
//
//  Model + real sample data for the coffee shop menu.
//

import Foundation

// Identifiable gives each item a stable identity for ForEach / List.
struct CoffeeItem: Identifiable {
    let id = UUID()
    let name: String
    let category: String   // "Hot" / "Cold" / "Dessert"
    let price: String
    let calories: String
    let description: String
    let imageURL: String   // real photo, loaded with AsyncImage
    let isNew: Bool
    let isFeatured: Bool
    let isFavorite: Bool
}

extension CoffeeItem {
    static let samples: [CoffeeItem] = [
        CoffeeItem(
            name: "Caramel Macchiato",
            category: "Hot",
            price: "4.90 ₼",
            calories: "190 kcal",
            description: "A classic latte made with caramel syrup and steamed milk.",
            imageURL: "https://images.pexels.com/photos/5305639/pexels-photo-5305639.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: true,
            isFeatured: false,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Cold Brew",
            category: "Cold",
            price: "3.80 ₼",
            calories: "5 kcal",
            description: "Smooth, low-acidity coffee brewed slowly for 12 hours.",
            imageURL: "https://images.pexels.com/photos/8605616/pexels-photo-8605616.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: false,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Cappuccino",
            category: "Hot",
            price: "3.50 ₼",
            calories: "120 kcal",
            description: "Espresso with steamed milk and a thick layer of foam.",
            imageURL: "https://images.pexels.com/photos/531874/pexels-photo-531874.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: false,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Iced Matcha Latte",
            category: "Cold",
            price: "4.60 ₼",
            calories: "160 kcal",
            description: "A refreshing blend of matcha, milk, and ice.",
            imageURL: "https://images.pexels.com/photos/30593915/pexels-photo-30593915.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: true,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Espresso",
            category: "Hot",
            price: "2.80 ₼",
            calories: "5 kcal",
            description: "Rich and intense single-shot espresso.",
            imageURL: "https://images.pexels.com/photos/9050518/pexels-photo-9050518.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: false,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Strawberry Milkshake",
            category: "Cold",
            price: "4.20 ₼",
            calories: "310 kcal",
            description: "A creamy cold dessert drink made with fresh strawberries.",
            imageURL: "https://images.pexels.com/photos/10066814/pexels-photo-10066814.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: true,
            isFavorite: false
        ),
        CoffeeItem(
            name: "New York Cheesecake",
            category: "Dessert",
            price: "3.90 ₼",
            calories: "320 kcal",
            description: "Classic New York-style cheesecake made with rich cream cheese.",
            imageURL: "https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: false,
            isFavorite: true
        ),
        CoffeeItem(
            name: "Flat White",
            category: "Hot",
            price: "3.90 ₼",
            calories: "130 kcal",
            description: "Rich espresso combined with silky steamed milk and a thin layer of foam.",
            imageURL: "https://images.pexels.com/photos/544113/pexels-photo-544113.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: false,
            isFavorite: true
        ),
        CoffeeItem(
            name: "Hot Chocolate",
            category: "Hot",
            price: "4.40 ₼",
            calories: "280 kcal",
            description: "Thick Belgian chocolate melted into hot milk, topped with marshmallows.",
            imageURL: "https://images.pexels.com/photos/5264675/pexels-photo-5264675.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: true,
            isFeatured: true,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Iced Americano",
            category: "Cold",
            price: "3.20 ₼",
            calories: "10 kcal",
            description: "Double espresso poured over ice and chilled water.",
            imageURL: "https://images.pexels.com/photos/5741238/pexels-photo-5741238.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: false,
            isFavorite: true
        ),
        CoffeeItem(
            name: "Mint Lemonade",
            category: "Cold",
            price: "3.60 ₼",
            calories: "90 kcal",
            description: "Freshly squeezed lemons with crushed mint and plenty of ice.",
            imageURL: "https://images.pexels.com/photos/4134388/pexels-photo-4134388.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: true,
            isFeatured: true,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Butter Croissant",
            category: "Dessert",
            price: "2.90 ₼",
            calories: "240 kcal",
            description: "Flaky French pastry baked fresh every morning.",
            imageURL: "https://images.pexels.com/photos/15023803/pexels-photo-15023803.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: true,
            isFeatured: true,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Tiramisu",
            category: "Dessert",
            price: "4.70 ₼",
            calories: "350 kcal",
            description: "Layers of mascarpone cream and espresso-soaked ladyfingers.",
            imageURL: "https://images.pexels.com/photos/10169991/pexels-photo-10169991.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: true,
            isFeatured: false,
            isFavorite: false
        ),
        CoffeeItem(
            name: "Chocolate Brownie",
            category: "Dessert",
            price: "3.40 ₼",
            calories: "390 kcal",
            description: "Dense chocolate brownie with a soft, fudgy centre.",
            imageURL: "https://images.pexels.com/photos/9170501/pexels-photo-9170501.jpeg?auto=compress&cs=tinysrgb&w=800",
            isNew: false,
            isFeatured: true,
            isFavorite: false
        )
    ]
}
