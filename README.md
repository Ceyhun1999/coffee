# coffee

**CozyCup** — SwiftUI-приложение кофейни: главный экран с новинками меню, информацией о заведении, любимыми позициями гостей и полным меню.

## Скриншоты

| Главный экран | Полное меню |
|:---:|:---:|
| <img src="screenshots/home.png" width="300"> | <img src="screenshots/full-menu.png" width="300"> |

## Возможности

- **New on the menu** — горизонтальная карусель новинок с бейджем «New»
- **Information** — Wi-Fi, часы работы, способы оплаты и адрес в сетке `Grid`
- **Customer Favorites** — список популярных позиций с категорией и ценой
- **Full Menu** — всё меню в двухколоночной сетке `LazyVGrid`
- Фото загружаются из сети через `AsyncImage`

## Структура

```
coffee/
├── coffeeApp.swift
├── Screens/
│   └── HomeView.swift
├── Views/Components/
│   ├── NewMenuCardView.swift
│   ├── InformationCardView.swift
│   ├── CustomerFavoritesCardView.swift
│   ├── SectionTitleView.swift
│   └── CustomImageView.swift
└── MockData/
    └── CoffeeItem.swift
```

## Запуск

1. Открыть `coffee.xcodeproj` в Xcode
2. Выбрать симулятор iPhone и нажать **Run** (⌘R)

## Стек

Swift · SwiftUI · Xcode
