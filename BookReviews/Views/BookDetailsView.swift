//
//  BookDetailsView.swift
//  BookReviews
//
//  Created by David May on 3/6/23.
//

import SwiftUI

struct BookDetailsView: View {
    
    @EnvironmentObject var model: BookModel

    var book: Book
    //@State var
    @State var selectedRating = 0
    var body: some View {
        NavigationView {
            GeometryReader { geo in 
                VStack(alignment: .leading) {
                    
                    Text(book.title)
                    .font(Font.custom("Avenir Heavy", size: 35))
                    .padding(.leading, 10)
                    .padding(.top, 30)

                  
                    
                    Text(book.author)
                      
                        .font(Font.custom("Avenir Heavy", size: 25))
                        .padding(.leading, 10
                        )
                    
                    
                    NavigationLink(destination: BookContentView(book: book.self), label: {
                        
                        Image(book.image)
                           
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width / 1.5, height: geo.size.height / 2, alignment: .center)
                            
                            .padding(.leading, (geo.size.width - (geo.size.width / 1.5)) / 2 )
             
                        })
                  
                    
                    
                    
                    
                    Text("Mark for Later")
                        .font(Font.custom("Avenir Heavy", size: 25))
                        .padding(.leading, 112)
                        
                    
                    
                    
                    
                        if book.isFavourite == true {
                        Image(systemName: "star.fill")
                                
                                .padding(.leading, 180)
                    } else {
                        Image(systemName: "star")
                           
                            .padding(.leading, 180)
                    }
                    
                    
                    
                    
                    Text("Rating")
                        .padding(.top, 15)
                        .padding(.leading, 167)
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
                    .padding(.leading, 110)
                }
            }
            
            
        }
        

    }
}

struct BookDetailsView_Previews: PreviewProvider {


   static var previews: some View {

    let model = BookModel()


    BookDetailsView(book: model.books[1])
           .environmentObject(BookModel())
  }
}
