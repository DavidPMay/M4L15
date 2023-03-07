//
//  BookDetailsView.swift
//  BookReviews
//
//  Created by David May on 3/6/23.
//

import SwiftUI

struct BookDetailsView: View {
    
    var book: Book
    //@State var
    @State var selectedRating = 0
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(book.title)
            .font(Font.custom("Avenir Heavy", size: 40))
          

          
            
            Text(book.author)
              
                .font(Font.custom("Avenir Heavy", size: 25))
            
            Image(book.image)
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 350)
                .padding(.leading, 50)
            
            
            
            
            Text("Mark for Later")
                .font(Font.custom("Avenir Heavy", size: 20))
                .padding(.leading, 75)
                
            
            
            
            
                if book.isFavourite == true {
                Image(systemName: "star.fill")
                        
                        .padding(.leading, 130)
            } else {
                Image(systemName: "star")
                   
                    .padding(.leading, 130)
            }
            
            
            
            
            Text("Rating")
                .padding(.top, 15)
                .padding(.leading, 120)
            Picker("", selection: $selectedRating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 160)
            .font(Font.custom("Avenir", size: 15))
            .padding(.leading, 65)
        }
    }
}

struct BookDetailsView_Previews: PreviewProvider {


   static var previews: some View {

    let model = BookModel()


    BookDetailsView(book: model.books[2])
  }
}
