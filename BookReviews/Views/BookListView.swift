//
//  BookListView.swift
//  BookReviews
//
//  Created by David May on 2/28/23.
//

import SwiftUI

struct BookListView: View {
    
    @EnvironmentObject var model: BookModel
    
    
    
    var body: some View {
        
        NavigationView {
            
            VStack (alignment: .leading) {
                
                Text("All Books")
                
                    .padding(.top, 40)
                    .padding(.leading)
                    .font(Font.custom("Avenir Heavy", size: 40))
                    .bold()
                GeometryReader { geo in
                ScrollView {
                    
                        
                    LazyVStack (alignment: .leading) {
                        
                       
                        ForEach(model.books) { b in
                            
                            
                            NavigationLink(destination: ContentView(), label: {
                                ZStack {
                                    
                                    Rectangle()
                                    
                                        .foregroundColor(.white)
                                        .frame(width: geo.size.width - 40, height: geo.size.height - 40)
                                        .cornerRadius(20)
                                        .shadow(color: Color (.sRGB, red: 0, green: 0, blue: 0, opacity: 0.7), radius: 10, x: -10, y: 10)
                                    //                                        GeometryReader { geo in
                                    //                                    Rectangle()
                                    //
                                    //                                        .foregroundColor(.black)
                                    //
                                    //
                                    //                                        .frame(width: geo.size.width - 60, height: geo.size.height - 130)
                                    //                                        .cornerRadius(20)
                                    //                                        .shadow(color: Color (.sRGB, red: 0, green: 0, blue: 0, opacity: 0.7),
                                    //                                                radius: 10, x: -10, y: -10)
                                    //                                        .padding([.leading, .top])
                                    VStack (alignment: .leading){
                                        
                                        Text(b.title)
                                        
                                            .foregroundColor(.black)
                                            .font(Font.custom("Avenir Heavy", size: 30))
                                        
                                        Text (b.author)
                                            .foregroundColor(.black)
                                            .font(Font.custom("Avenir", size: 15))
                                            .italic()
                                        
                                        
                                        Image(b.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: geo.size.width - 70, height: geo.size.height - 195)
                                        
                                            .clipped()
                                            .cornerRadius(5)
                                        
                                    }
                                    
                                    
                                    
                                    
                                    
                                    
                                }})
                                
                                
                            }
                    }
                    .padding(.leading, 25)
                    }
                    .navigationBarHidden(true)
                }
                
            }
        }
      //  .padding(.leading)
    }
    
    
    
    struct BookListView_Previews: PreviewProvider {
        static var previews: some View {
            BookListView()
                .environmentObject(BookModel())
        }
    }
}



