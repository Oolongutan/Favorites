//
// FavoritesView.swift : Favorites
//
// Copyright © 2025 Auburn University.
// All Rights Reserved.
//
// Altered for CPSC-5340 by Matt Erdahl


import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favorites: FavoritesViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack {
                Text("Favorites")
                    .font(.system(size: 36))
                Text("Cities:")
                    .font(.system(size: 24))
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(favorites.cities) { city in
                    if (city.isFavorite) {
                        CityCardView(city: city)
                    }
                }
                Text("Hobbies:")
                    .font(.system(size: 24))
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(favorites.hobbies) { hobby in
                    if (hobby.isFavorite) {
                        HobbyRowView(hobby: hobby)
                    }
                }
                Text("Books:")
                    .font(.system(size: 24))
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(favorites.books) { book in
                    if (book.isFavorite) {
                        BooksRowView(book: book)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())
}
