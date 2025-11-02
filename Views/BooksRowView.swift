//
//  BooksRowView.swift
//  Favorites_Completed
//
//  Created by Matt Erdahl on 11/2/25.
//

import SwiftUI

struct BooksRowView: View {
    let book: BookModel
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    var body: some View {
        HStack {
            Text(book.bookTitle)
                .font(.body)
                .bold()
                .underline()
            Text(" by ")
                .font(.body)
            Text(book.bookAuthor)
                .font(.body)
            
            Spacer()
            
            Button(action: {
                favorites.toggleFavoriteBook(book: book)
            }) {
                Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                    .foregroundStyle(book.isFavorite ? .red : .gray)
            }
        }
        .padding(.vertical, 6)
    }
}

#Preview {
    BooksRowView(book: BookModel(id : 1, bookTitle: "To Kill a Mockingbird", bookAuthor: "Harper Lee"))
}
