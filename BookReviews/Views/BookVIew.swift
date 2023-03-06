//
//  BookVIew.swift
//  BookReviews
//
//  Created by David May on 2/28/23.
//

import SwiftUI

struct BookVIew: View {
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BookVIew_Previews: PreviewProvider {
    static var previews: some View {
        BookVIew()
    }
}
