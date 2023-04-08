//
//  BookContentView.swift
//  BookReviews
//
//  Created by David May on 3/13/23.
//

import SwiftUI

struct BookContentView: View {
    
    @EnvironmentObject var model: BookModel
    
    var book: Book
    var body: some View {
        ScrollView {
            LazyVStack {
               
                ForEach(book.content, id: \.self) { passage in
                    Text(passage)
                    Text(" ")
                    
                }
                
//                ForEach (0..<book.content.count, id: \.self) { index in
//                    Text(book.content[index])
//                        .padding(.bottom, 5)
//                        .font(Font.custom("Avenir", size: 15))
//
//                }
            }
        }
    }
}
//struct BookContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookContentView()
//    }
//}
