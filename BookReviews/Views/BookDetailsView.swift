//
//  BookDetailsView.swift
//  BookReviews
//
//  Created by David May on 3/6/23.
//

import SwiftUI

struct BookDetailsView: View {
    
    var book: Book
    var body: some View {
        Text (book.title)
    }
}

struct BookDetailsView_Previews: PreviewProvider {


   static var previews: some View {

    let model = BookModel()


    BookDetailsView(book: model.books[0])
  }
}
